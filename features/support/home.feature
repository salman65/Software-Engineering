Feature: Home Page Features
As a product manager
I want our users to see the options of our app when they visit the homepage

Scenario: User sees the options
When I go to home
Then I should see "Sign In"

When I go to home
Then I should see "Home"

When I go to home
Then I should see "Contact Us"

When I go to home
Then I should see "About Us"

Scenario: User clicks the options
When I follow "Home"
Then I should be on home

When I follow "About Us"
Then I should be on aboutus

When I follow "Contact Us"
Then I should be on contact

When I follow "Sign In"
Then I should be on signin

When I follow "Order"
Then I should be on signin
