# encoding: utf-8

class CategoryCarsMiscOtherPage < AdDetailsPage
include PageObject

  def get_parameter (field)
    get_generic_parameter(field) 
  end
end