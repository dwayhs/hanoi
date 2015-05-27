Given(/^I am on the home page$/) do
  visit "/"
end

Given(/^I am on the "([^"]*)" page$/) do |url|
  visit url
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
 fill_in element, with: text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
  # page.save_screenshot("test.png")
end

Then(/^"([^"]*)" should be in "([^"]*)"$/) do |disk, stick|
  within(:css, stick) do
    page.should have_css(disk)
  end
end

Then(/^I should see link "([^"]*)" in "([^"]*)"$/) do |link, button_area|
  within(:css, button_area) do
    page.should have_content(link)
  end
end
