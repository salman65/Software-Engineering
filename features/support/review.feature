Feature: Submitting a review form
As a product manager
I want our users to have the option of submitting a review form

Scenario: User submits a review form
Given I am on "Review"
And I fill in "review[ontime]" with "3"
And I fill in "review[foodquality]" with "4"
And I fill in "review[overallrating]" with "4"
And I fill in "review[description]" with "satisfactory"
And I press "Submit Review"
Then I should be on "users/1"