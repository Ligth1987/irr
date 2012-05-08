# encoding: utf-8

class CategoryCarsPassangerNewPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/cars/passenger/new"

  text_field :car_year_from, :name => "car-year[from]"
  text_field :car_year_to, :name => "car-year[to]"

  div :make, :xpath => "//div[@data-item-name='make']"
  div :model, :xpath => "//div[@data-item-name='model']"

  div :bodytype, :xpath => "//div[@data-item-name='bodytype']"
  div :turbo, :xpath => "//div[@data-item-name='turbo']"
  div :gear, :xpath => "//div[@data-item-name='gear']"
  div :transmittion, :xpath => "//div[@data-item-name='transmittion']"
  
  def set_parameter (hash)
    case hash['parameter']

    when "Год выпуска"
      self.car_year_from = hash['min']
      self.car_year_to = hash['max']

    when "Марка"
      multiselect(self.make_element, hash['value'])

    when "Модель"
      multiselect(self.model_element, hash['value'])
      
    when "Тип кузова"
      multiselect(self.bodytype_element, hash['value'])
    
    when "Тип двигателя"
      multiselect(self.turbo_element, hash['value'])
      
    when "Тип привода"
      multiselect(self.gear_element, hash['value'])
      
    when "Тип трансмиссии"
      multiselect(self.transmittion_element, hash['value'])
      
    when "Пробег"
      self.mileage_from = hash['min']
      self.mileage_to = hash['max']

    else
      super(hash)
    end
  end
  
  def get_parameter (field)
    case field
    when "Год выпуска"
      result = get_unique_parameter(field).gsub(/ г/,'')
    when "Марка", "Модель", "Тип кузова", "Тип двигателя", "Привод", "Тип трансмиссии"
      result = get_unique_parameter(field)
    else
      result = get_generic_parameter(field) 
    end
    result
  end
end
