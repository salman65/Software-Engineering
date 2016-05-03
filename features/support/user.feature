Feature: User Page Features
As a product manager
I want our users to see a list of resturants and access them when they signin successfully

Scenario: User sees a list of resturants
When I visit the signin page
And I fill in "session[email]" with "salman@gmail.com"
And I fill in "session[password]" with "salman"
And I press "Log in"
Then I should be on "users/1"
Then I should see hotel "Zakir Tikka"
And I should see hotel "Chop Chop"
And I should see hotel "Flavours"
And I should see hotel "Subway"

Scenario: User clicks the resturant name from resturants list
When I visit the signin page
And I fill in "session[email]" with "salman@gmail.com"
And I fill in "session[password]" with "salman"
And I press "Log in"
Then I should be on "users/1"
When I follow "Zakir Tikka"
Then I will be directed to "zakirs/index?id=1"

Scenario: User clicks view reviews to see all the reviews he has written
Given I am on "users/1"
When I follow "View Reviews"
Then I should be on "reviews/1"
