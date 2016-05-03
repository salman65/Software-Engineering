
When(/^I click the (.*)$/) do |webpage|
  visit path_to(webpage)
end

When (/^I visit the (.*) page$/) do |x|
  visit path_to(x)
end


When(/^I click Sign in$/) do
   visit users_path
end

Given (/^the user enters, first name, last name, email, password$/) do
  #something
end


When(/^I click Don't have an account? SignUp!$/) do
  visit new_user_path
end

Then /^(?:|I )will be directed to (.+)$/ do |page_name|
  if page_name.include? "\""
    page_name=page_name[1..(page_name.length - 2)]
    current_path="\/"+page_name
  else
    current_path = URI.parse(current_url).path
  end
  
  current_path == "\/"+page_name
end

#Then(/^I should be logged into my page with my name and budget$/) do
  # expect(page).to have_content("Foodback")
#end

#Given (/^I enter a legit number value as my budget$/) do
  #something
#end

#When (/^I click on enter$/) do
#end

Then (/^I should see a success message (.*)$/) do |text|
  page.has_content?(text)
end

Then (/^I should see hotel (.*)$/) do |text|
  page.has_content?(text)
end

Then (/^I should see a failure message (.*)$/) do |text|
  page.has_content?(text)
end


When (/^I click "([^"]*)"$/) do |link|
  click_link(link)
end


#When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
#  fill_in(field, :with => value)
  # find(field).set(value)
#end

