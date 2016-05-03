Feature: Placing final order
As a product manager
I want our users to place final order after choosing the items they want

Scenario: User places the final order
Given I am on "Zakir Tikka"
And I click "Place Final Order"
Then I will be directed to "reviews/new?id=1"
