Feature: Delete your poll
  
  As a poll taker
  So that I can easily remove old or irrelevant questions
  I want to be able to delete my poll
  
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
  When I click on the "Delete" link
  Then I should be on the "OPEN POLLS:" page