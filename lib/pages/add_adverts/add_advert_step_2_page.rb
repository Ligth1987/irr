# encoding: utf-8
require './lib/pages/ad_details_page.rb'

class AddAdvertStep2New < AdDetailsPage
  include PageObject

  select_list :region, id: "fr-region"
  text_field  :address_city, name: "address_city"
  text_field  :address_street, name: "mapStreetVisible"
  text_field  :address_house, name: "mapHouseNr"
  text_field  :address_metro, name: "metro"
  text_field  :address_sosshe, name: "sosshe"
  select_list :rent_period, name: "rent_period"

  select_list :mark, name: "make"
  select_list :model, name: "model"
  select_list :currency, name: "currency"
  text_field :model_text, name: "model"

  text_field :f_title, id: "f_title"
  text_field :f_text, id: "f_text"
  file_field :upload, id: "input-file-upload"
  unordered_list :uploaded_photos, id: "photos"
  link :add_video, id: "showPopupVideoAdd"

  div :videoPopup, id: "popupVideoAdd"
  text_field :videoContents, id: "video_content"
  button :uploadVideoButton, id: "uploadVideoButton"
  div :video_preview, id: "videoContentBlock"

  link :save, id: "submit-edit-form"
  button :next_step, id: "next_link"

  div :no_package_message, id: "message-free-add"
  div :has_package, class: "ico-messagesok"

  span :error_message, id: "adv-errorMessage"

  def set_street(street)
    self.address_street = street
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_shosse(shosse)
    self.address_shosse = shosse
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_house(house)
    self.address_house = house
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_metro(metro)
    self.address_metro = metro
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_city(city)
    self.address_city = city
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
    Watir::Wait.until{ not self.div_element(id: "popupCurtain").visible? }
  end

  def set_value_for_custom(control, hash)
    # По типу следующего контрола устанавливаем значение
    case control.tag_name
    when "select"
      # Комбобокс
      control.parent.parent.element.div(class: "ik_select_link").click
      list = self.div_elements(class: "ik_select_list_inner").find{|div| div.visible?}
      list.span_element(text: hash['value']).click
    when "input"
      control.value = hash["value"]
    else
      # Текстбокс и комбобокс - разделены ~
      control.value = hash["value"].split(" ~ ")[0]
      set_value_for_custom(control.parent.parent.select_list, hash['value'].split(" ~ ")[1])
    end
  end

  def set_custom_parameter(hash)
    # Ищем ближайший контрол по hash['parameter']
    # Сначала checkbox
    begin
      self.checkbox_element(xpath: "//label[contains(.,'#{hash['parameter']}')]/input").check
    rescue Watir::Exception::UnknownObjectException => e
      label = self.label_element(text: /#{hash['parameter']}/, class: "b-form-LK_control-label")
      control_id = label.element.attribute_value("for")
      if control_id.empty?
        control = label.parent.element.input
        unless control.exists?
          control = label.parent.element.select_list
        end
      else
        control = self.div_element(id: "customfields").element.element(id: control_id)
      end
      set_value_for_custom(control.to_subtype, hash)
    end
  end

  def set_parameter(hash)
    begin
      case hash['parameter']
      when "Населённый пункт"
        self.set_city hash['value']
      when "Улица"
        self.set_street hash['value']
      when "Дом"
        self.set_house hash['value']
      when "Ближайшее метро"
        self.set_metro hash['value']
      when "Заголовок"
        self.f_title = hash['value']
      when "Срок сдачи"
        self.rent_period = hash['value']
      when "Валюта"
        set_value_for_custom(self.currency_element, hash)
      when "Марка"
        self.mark = hash['value']
      when "Модель"
        if self.model?
          set_value_for_custom(self.model_element, hash)
        else
          self.model_text = hash['value'] 
        end
      when "Текст"
        self.f_text = hash['value']
      else
        self.set_custom_parameter(hash)
      end
    rescue Exception => e
      raise "Ошибка установки параметра #{hash['parameter']} = '#{hash['value']}':\n#{e}"
    end
  end

  def load_photo
    # Загружаем файл из URL
    Net::HTTP.start("mandroid.ru") do |http|
      resp = http.get("/sites/default/files/imagecache/full-node-news/softattached/irr.png")
      open("/tmp/logo_irr.png", "wb") do |file|
        file.write(resp.body)
      end
    end
    # Указываем этот файл
    el_id = self.upload_element.element.id
    @browser.execute_script("document.getElementById('#{el_id}').setAttribute('class', '')")
    self.upload_element.element.set "/tmp/logo_irr.png"
    # Ждём пока появится загруженная фотография
    self.uploaded_photos_element.
         list_item_element(id: "downloaded-photo-1").when_present(30).
         image_element.exists?
  end

  def load_video
    self.add_video_element.when_present.click
    Watir::Wait.until { self.videoPopup_element.exists? }

    # См. http://tp.prontosoft.by//Project/Planning/Task/View.aspx?TaskID=38786&ProjectID=30031
    # Рандомно вставляем youtube или vimeo видео
    videos = ["http://www.youtube.com/watch?v=3VLcLH97eRw", 
              "http://vimeo.com/7265982", 
              "http://youtu.be/yv0zA9kN6L8", 
             ]
    video_url = videos[Random.rand(videos.length)]
    puts "DEBUG: Вставляем видео #{video_url}"
    self.videoContents_element.when_present.value = video_url

    self.uploadVideoButton
    Watir::Wait.until {self.video_preview?}
    # Ждём 5 секунд
    sleep 5
  end

  def save
    self.save_element.when_present.click
  end

  def has_package_message
    self.has_package_element.exists?
  end

  def get_package_message
    self.no_package_message_element.when_present.text
  end

  def ensure_additional_parameters_are_displayed
    unless self.div_element(class: "b-form-LK_other-params").visible?
      self.link_element(text: "Дополнительные характеристики").click
    end
  end

  def ensure_section_is_visible(name)
    self.div_elements(class: "b-form-LK_wrap_tabs_item").find{|div| 
      div.div_element(class: "b-form-LK_wrap_tabs_item_title_wrap", text: name).exists?
    }.click
  end

end

class AddAdvertStep2 < AdDetailsPage
  include PageObject

  link :region_spoiler, name: "region_link"
  select_list :region, id: "fr-region"
  text_field  :address_city, name: "address_city"
  text_field  :address_street, name: "mapStreetVisible"
  text_field  :address_house, name: "mapHouseNr"
  text_field  :address_metro, name: "metro"
  text_field  :address_sosshe, name: "sosshe"
  select_list :rent_period, name: "rent_period"
  select_list :currency, name: "currency"

  select_list :mark, name: "make"
  select_list :model, name: "model"
  select_list :currency, name: "currency"
  text_field :model_text, name: "model"
  text_field :mark_other, name: "make_other"
  text_field :model_other, name: "model_other"

  text_field :f_title, id: "f_title"
  text_field :f_text, id: "f_text"
  file_field :upload, id: "input-file-upload"
  unordered_list :uploaded_photos, id: "photos"
  link :add_video, id: "showPopupVideoAdd"

  div :videoPopup, id: "popupVideoAdd"
  text_field :videoContents, id: "video_content"
  link :uploadVideoButton, id: "uploadVideoButton"
  div :video_preview, id: "videoContentBlock"

  link :save, id: "submit-edit-form"
  link :next_step, id: "next_link"

  div :no_package_message, id: "message-free-add"
  div :has_package, class: "ico-messagesok"

  div :error_message, id: "addAdvertErrors"

  def set_region(region)
    self.region_spoiler_element.when_present.click
    self.region_element.when_present.visible?.should == true
    self.region = region
  end

  def set_street(street)
    self.address_street = street
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_shosse(shosse)
    self.address_shosse = shosse
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_house(house)
    self.address_house = house
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_metro(metro)
    self.address_metro = metro
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_city(city)
    self.address_city = city
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_value_for_custom(control, hash)
    # По типу следующего контрола устанавливаем значение
    case control.tag_name
    when "select"
      # Комбобокс
      self.select_list_element(id: control.id).select hash["value"]
    when "label"
      # Другие параметры - скрыты внутри лейбла
      control.text_field.value = hash["value"]
    else
      # Текстбокс и комбобокс - разделены ~
      control.text_field.value = hash["value"].split(" ~ ")[0]
      control.parent.select_list.select hash['value'].split(" ~ ")[1]
    end
  end

  def set_custom_parameter(hash)
    # Ищем ближайший контрол по hash['parameter']
    # Сначала checkbox
    begin
      self.checkbox_element(xpath: "//label[contains(.,'#{hash['parameter']}')]/input").check
    rescue Watir::Exception::UnknownObjectException => e
      label = self.div_element(text: /#{hash['parameter']}/, class: "lbl")
      control = label.element.elements(xpath: "following-sibling::*")[0]
      if (control.tag_name == 'div') and
         (control.attribute_value("class") == "hid-o")
         control = control.label
      end
      set_value_for_custom(control, hash)
    end
  end

  def set_combobox_model(value)
    Watir::Wait.while {
      self.select_list_element(name: "model").options.find {|o| o.text == value}.nil?
    }
    self.select_list_element(name: "model").select value
  end

  def set_parameter(hash)
    begin
      case hash['parameter']
      when "Регион"
        self.set_region hash['value']
      when "Населённый пункт"
        self.set_city hash['value']
      when "Улица"
        self.set_street hash['value']
      when "Дом"
        self.set_house hash['value']
      when "Ближайшее метро"
        self.set_metro hash['value']
      when "Заголовок"
        self.f_title = hash['value']
      when "Срок сдачи"
        self.rent_period = hash['value']
      when "Марка"
        if hash['value'].split(" ~ ")[0] == 'Другая'
          self.mark = 'Другая'
          self.mark_other = hash['value'].split(" ~ ")[1]
        else
          self.mark = hash['value']
        end
      when "Модель"
        if self.model?
          if hash['value'].split(" ~ ")[0] == 'Другая'
            self.set_combobox_model("Другая")
            self.model_other = hash['value'].split(" ~ ")[1]
          else
            self.set_combobox_model(hash['value'])
          end
        else
          self.model_text = hash['value']
        end
      when "Текст"
        self.f_text = hash['value']
      else
        self.set_custom_parameter(hash)
      end
    rescue Exception => e
      if e.message.include?("An open modal dialog blocked the operation")
        raise "Открыт модальный диалог '#{@browser.alert.text}'"
      else
        raise "Ошибка установки параметра #{hash['parameter']} = '#{hash['value']}':\n#{e}"
      end
    end
  end

  def load_photo
    # Загружаем файл из URL
    Net::HTTP.start("mandroid.ru") do |http|
      resp = http.get("/sites/default/files/imagecache/full-node-news/softattached/irr.png")
      open("/tmp/logo_irr.png", "wb") do |file|
        file.write(resp.body)
      end
    end
    # Указываем этот файл
    self.upload_element.element.set "/tmp/logo_irr.png"
    # Ждём пока появится загруженная фотография
    self.uploaded_photos_element.
         list_item_element(id: "downloaded-photo-1").when_present(30).
         image_element.exists?
  end

  def load_video
    self.add_video_element.when_present.click
    Watir::Wait.until { self.videoPopup_element.exists? }

    videos = ["http://www.youtube.com/watch?v=3VLcLH97eRw", 
              "http://vimeo.com/7265982", 
              "http://youtu.be/yv0zA9kN6L8", 
             ]
    video_url = videos[Random.rand(videos.length)]
    puts "DEBUG: Вставляем видео #{video_url}"
    self.videoContents_element.when_present.value = video_url
    self.uploadVideoButton
    Watir::Wait.until {self.video_preview?}
  end

  def save
    self.save_element.when_present.click
  end

  def has_package_message
    self.has_package_element.exists?
  end

  def get_package_message
    self.no_package_message_element.when_present.text
  end

  def ensure_section_is_visible(name)
    if self.table_element.element.th(text: name).a.exists?
      self.table_element.element.th(text: name).a.click
    end
  end

  def get_error_message
    begin
      self.div_element(id: "addAdvertErrors").text
    rescue
      return nil
    end
  end
end
