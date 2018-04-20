Feature: Add a new poll
  
  As a poll taker
  So that I can easily judge opinions on questions
  I want to be able to add a new poll
  
Scenario:
  Given I am on the home pages
  When I click on the "CREATE NEW POLL" link
  Then I should be on the "CREATE A NEW POLL:" page
  And I should see the "q" field
  And I should see the "one" field
  And I should see the "two" field
  And I should see the "three" field
  And I should see the "four" field