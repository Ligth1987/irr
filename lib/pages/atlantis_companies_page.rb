# encoding: utf-8
class AtlantisCompaniesListPage
  include PageObject

  div :main, id: "doc-body"

  def wait_for_page_to_be_opened
    self.span_element(class: "x-tab-strip-text", text: "Компании").when_present(20)
    # Ждём пока загрузятся компании
    Watir::Wait.until { 
      self.table_elements(class: "x-grid3-row-table").size > 0
    }
  end

  def has_company_with_name? name
    # Ищем компанию
    self.text_field_element(name: "title").when_present.value = name
    self.text_field_element(name: "title").send_keys "\n"
    Watir::Wait.until { 
      self.div_elements(class: "ext-el-mask").find {|d| d.visible?}.nil? 
    }
    # Проверяем количество элементов
    self.table_elements(class: "x-grid3-row-table").size > 0
  end

  def delete_company name
    self.table_element(class: "x-grid3-row-table").element.right_click
    self.link_element(link_text: "Удалить").click
    self.button_element(text: "Да").when_present.click
    Watir::Wait.until { 
      self.div_elements(class: "ext-el-mask").find {|d| d.visible?}.nil? 
    }
  end

  def open_new_company_dialog
    self.button_element(text: "Создать (Ctrl+N)").when_present.click
  end

end

class AtlantisNewCompanyPage
  include PageObject

  div (:main) { |p| 
    p.div_elements(class: "x-panel").find{|d| 
      d.span_element(class: "x-panel-header-text", text: "Свойства").exists?
    }
  }
  button :save, text: "Сохранить"

  def set_parameter hash
    name = hash['поле']
    value = hash['значение']
    # Нажимаем по полю и обрабатываем
    Watir::Wait.until { 
      self.div_elements(class: "ext-el-mask").find {|d| d.visible?}.nil? 
    }
    row = self.main_element.div_element(class: "x-grid3-col-title", 
                                         text: name).when_present.parent.parent
    # Скроллим до элемента
    row.element.wd.location_once_scrolled_into_view
    row.cell_element(index: 2).when_present.double_click
    # Появляется editor
    editor = self.main_element.when_present.element.
                  divs(class: "x-editor").find {|e| e.visible?}
    raise "Не открыт редактор" if editor.nil?
    # Если в поле есть картинка - то это селект
    if editor.img.exists?
      self.set_combobox_value(editor, value)
    else
      if editor.select.exists?
        self.set_checkbox_value(editor, value)
      else
        self.set_text_value(editor, value)
      end
    end
  end

  def open_editor_for_title name
    title = nil
    Watir::Wait.until {
      title = self.main_element.element.divs(class: "x-grid3-col-title").find {|d|
        d.text.include?(name) }
      not title.nil?
    }
    raise "Не найдено поле ввода с текстом '#{name}'" if title.nil?
    title.wd.location_once_scrolled_into_view
    Watir::Wait.until { 
      self.div_elements(class: "ext-el-mask").find {|d| d.visible?}.nil? 
    }
    title.parent.parent.td(class: "x-grid3-td-value").click
    editor = nil
    Watir::Wait.until {
      editor = self.main_element.element.divs(class: "x-editor").
               find{|div| div.visible?}
      not editor.nil?
    }
    editor
  end

  def set_combobox_value(editor, value)
    combolist = nil
    checkbox_list = nil
    item = nil
    # Ждём раскрытия комбокса
    begin
      checkbox_list = self.div_element(class: "x-LovCombo-list-inner")
      unless checkbox_list.div_element(class: "x-form-check-wrap").visible?
        # Обычный комболист
        Watir::Wait.until(1) {
          combolist = self.div_elements(class: "x-combo-list-inner").
                           find {|d| d.visible?}
          combolist.nil? == false
        }
      end
    rescue Watir::Wait::TimeoutError => e
      # Не раскрылся - нажимаем на кнопку еще раз и снова ждём
      editor.click
      retry
    end

    # Ищем элемент
    begin
      unless combolist.nil?
        item = combolist.div_element(class: "x-combo-list-item", text: value)
      else
        item = checkbox_list.div_element(class: "x-form-check-wrap", text: value)
      end
      item.when_present.element.wd.location_once_scrolled_into_view
      item.click
    rescue Watir::Wait::TimeoutError => e
      raise "Значение '#{value}' не найдено"
    end
    
    # Закрываем комбобокс, если это чеклист, например
    editor.img.click if item.visible?
  end

  def set_text_value(editor, value)
    if editor.text_field.exists?
      editor.text_field.value = value
    else
      editor.textarea.value = value
    end
  end

  def set_checkbox_value(editor, value)
    editor.select.select value
  end

  def save_page
    self.save_element.when_present
    self.save_element.element.wd.location_once_scrolled_into_view
    sleep 1
    self.save_element.click
    self.save_element.click
  end

end
