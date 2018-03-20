Feature: Authentication
  In order to gain access to the site.


@javascript
Scenario: 1.Logging in
    Given I am on "/pfizer_login"
    And I fill in "Username" with "editor"
    And I fill in "Password" with "Editor@123"
    And I press "Login"
    Then I should be on "/emcm_dashboard"

