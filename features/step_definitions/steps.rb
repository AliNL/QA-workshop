# encoding: utf-8
require 'selenium-webdriver'
require 'cucumber/formatter/unicode'

Before do
  @page = BasePage.new(Selenium::WebDriver.for :firefox)
end

# After do
#   @page.driver.quit
# end


Given /I open the url "(.*)"/ do |url|
  @page.open_url(url)
  @home_page = HomePage.new(@page.driver)
end

Then /I click the login button/ do
  @home_page.click_login_button
end

Then /I click the register link/ do
  @register_page = @home_page.click_register_link
end

Then /I input the form as below/ do |form|
  @register_page.fill_in_form(form)
end

Then /I click the submit button/ do
  @result_page = @register_page.click_submit_button
end

Then /I should see the successful page/ do
  @result_page.success
end
