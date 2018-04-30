Feature: Navigate welcome page
  
  As a poll app user I would like to be
  able to easily find my way around the
  apps welcome page in order to use it's
  features easily and quickly
  
Scenario:
  Given I am on the home pages
  When I click on the "CREATE NEW POLL" link
  Then I should be on the "CREATE A NEW POLL:" page
  Given I am on the home pages
  When I click on the "VIEW OPEN POLLS" link
  Then I should be on the "OPEN POLLS:" page