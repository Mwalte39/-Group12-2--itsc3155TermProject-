Feature: Update your poll
  
  As a poll taker
  So that I can easily clarify questions
  I want to be able to update my poll
  
Scenario:
  Given I am on the home pages
  When I click on the "CREATE NEW POLL" link
  Then I should be on the "CREATE A NEW POLL:" page
  And I fill in "pollquestion" with "test"
  And I fill in "a1" with "a1"
  And I fill in "a2" with "a2"
  And I fill in "a3" with "a3"
  And I fill in "a4" with "a4"
  When I click on the "Save Poll" button
  Then I should be on the "MANAGE YOUR POLL:" page
  When I click on the "Edit" link
  Then I should be on the "EDIT YOUR POLL:" page
  And I should see the "pollquestion" field with "test"
  And I should see the "a1" field with "a1"
  And I should see the "a2" field with "a2"
  And I should see the "a3" field with "a3"
  And I should see the "a4" field with "a4"