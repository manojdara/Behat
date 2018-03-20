Feature: Search
  In order to see a word definition
  As a website user
  I need to be able to search for a word

 
  Scenario: Searching for a page that does exist
    Given I am on "/"
    Then I should see the text "Sign in to access this page"
    And I enter "test-us@pfizer.com" for "username"
    And I enter "Pfizer123" for "password"
    And I press "Sign In"

  Scenario: Searching for a page that does NOT exist
    Given I am on "/wiki/Main_Page"
    When I fill in "search" with "Glory Driven Development"
    And I press "searchButton"
    Then I should see "Search results"
 
  Scenario: Searching for a page with autocompletion
  Given I am on "/wiki/Main_Page"
  When I fill in "search" with "Behavior Driv"
  And I wait for the suggestion box to appear
  Then I should see "Behavior-driven development"