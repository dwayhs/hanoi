Given(/^I am on the home page$/) do
  puts  visit "/"
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
 fill_in element, with: text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
  page.save_screenshot("test.png")
end
