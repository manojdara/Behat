Feature: Authentication
  In order to gain access to the site.  I need to be able to login to the site.


@javascript
Scenario: 1.Logging in
    Given I am on "/user"
    And I fill in "Username " with "pfizer-admin"
    And I fill in "Password " with "Pfizer@123"
    And I press "Log in"


