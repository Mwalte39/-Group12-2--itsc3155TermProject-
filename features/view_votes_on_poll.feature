Feature: view votes on your poll
  
  As a pollee I would like to
  be able to view voting info in an
  organized easy to read fashion
  
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
  When I go to vote on my poll
  Then I should be on the "POLL: test" page
  When I click on the "vote[selection]" radio button
  When I click on the "submit" button
  Then I should be on the "Results" page
  And I should see "1"