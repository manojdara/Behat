Feature: Testing the Login for Drupal site
  In order to login from Pfizer Specialty Pharmacy and Distributor Materials Ordering Site as non-spp user.


  @javascript
  Scenario: Searching for a page that does exist
    Given I am on "/"
    And I fill in "Email Address" with "mexico-test@pfizer.com"
    And I fill in "password" with "Pfizer123"
    And I press "Sign In"
    Then I should be on "/"

