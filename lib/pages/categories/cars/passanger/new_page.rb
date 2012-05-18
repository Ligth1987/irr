# encoding: utf-8

class CategoryCarsPassangerNewPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/cars/passenger/new"

  irr_range_select "Год выпуска", "car-year"
  irr_multi_select "Марка", "make"
  irr_multi_select "Модель", "model"
  irr_multi_select "Тип кузова", "bodytype"
  irr_multi_select "Тип двигателя", "turbo"
  irr_multi_select "Тип привода", "gear"
  irr_multi_select "Тип трансмиссии", "transmittion"
  irr_range_select "Пробег", "mileage"

  def get_parameter (field)
    case field
    when "Год выпуска"
      # Вырезаем г.
      result = self.send(self.class.instance_variable_get(:@getter_functions)[field])
      return result.gsub(/ г./, '')
    else
      super(field)
    end
  end
end
