# encoding: utf-8

class CategoryCarsMiscOtherPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/cars/misc/other"
  
  alias get_parameter get_generic_parameter
end
