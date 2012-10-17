# encoding: utf-8

class AtlantisLoginPage
  include PageObject

  def login_as login, password
    self.text_field_element(name: "login").value = login
    self.text_field_element(name: "password").value = password
    self.text_field_element(name: "password").send_keys "\n"
  end

end

class AtlantisMainPage
  include PageObject

  def wait_for_page_to_be_opened
    Watir::Wait.until {self.div_element(id: "north").exists?}
  end

  def open_category long_category
    categories_num = long_category.split(' - ').size - 1
    root = self.div_element(class: "x-tree-root-node")
    long_category.split(' - ').each_with_index do |category, i|
      unless i == categories_num
        root.div_element(class: "x-tree-node-collapsed", text: category).
             link_element(class: "x-tree-node-anchor").when_present.click
        Watir::Wait.until { 
          root.div_element(class: "x-tree-node-expanded", text: category).exists?
        }
      else
        root.div_element(class: "x-tree-node-leaf", text: category).
             link_element(class: "x-tree-node-anchor").when_present.click
      end
    end
  end

end
