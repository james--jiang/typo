Given /the following articles exist/ do |articles_table|
    Article.delete_all
    articles_table.hashes.each do |article|
        Article.create!(article)
    end
end

When /^I fill in "(.*?)" with converted value of "(.*?)"$/ do |field, value|
  fill_in(field, :with => Article.find_by_title(value).id)
end