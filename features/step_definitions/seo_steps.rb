# encoding: utf-8

Когда %{я выбираю ссылку "$seo_link" в секции "Быстрый поиск"} do |link_text|
  on @category_page do |page|
    page.select_link_with_text_from_quick_search_section(link_text)
  end
end

То %{ссылка содержит "$part"} do |part|
  @browser.url.should include part
end

То %{в поле "$field" выбраны следующие значения:} do |field, table|
  on @category_page do |page|
    table.hashes.each do |hash|
      page.get_selected_parameter(field, hash).should == true
    end
    
    # TODO: Проверям, что другие значения не выбраны   
  end
end

То %{значение в поле "$field" равно "$expected"} do |field, expected|
  on @category_page do |page|
    page.get_selected_parameter(field).strip.should == expected
  end
end

То /^значение в поле "(\w+)" равно от (\d+)$/ do |field, min|
  on @category_page do |page|
    page.get_selected_parameter(field)['min'].should == min
  end
end

То /^значение в поле "(\w+)" равно до (\d+)$/ do |field, max|
  on @category_page do |page|
    page.get_selected_parameter(field)['max'].should == max
  end
end

То /^значение в поле "(.*?)" равно от (\d+) до (\d+)$/ do |field, min, max|
  on @category_page do |page|
    page.get_selected_parameter(field)['min'].should == min
    page.get_selected_parameter(field)['max'].should == max
  end
end