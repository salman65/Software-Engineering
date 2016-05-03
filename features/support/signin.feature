Feature: Signin Page Features
As a product manager
I want our users to sign in when they visit Sign In page

Scenario: (happy path) User adds the Signin details and logs in 
When I visit the signin page
And I fill in "session[email]" with "salman@gmail.com"
And I fill in "session[password]" with "salman"
And I press "Log in"
Then I should be on "users/1"
Then I should see a success message "User salman signed in"

Scenario: (sad path) User adds the Signin details and logs in 
When I visit the signin page
And I fill in "session[email]" with "salman@gmail.com"
And I fill in "session[password]" with "salasf"
And I press "Log in"
Then I should be on signin
Then I should see a failure message "Invalid email/password combination"

Scenario: User registers for a new account 
When I visit the signup page
And I fill in "user[name]" with "lalala"
And I fill in "user[email]" with "lalala@gmail.com"
And I fill in "user[password]" with "lalala"
And I fill in "user[cpassword]" with "lalala"
And I press "Sign Up"
Then I should be on "users/1"
Then I should see a success message "Welcome to the Sample App!"
