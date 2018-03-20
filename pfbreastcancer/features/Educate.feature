Feature: Authentication
  In order to gain access to the site.  I need to be able to login and logout


@javascript
Scenario: 1.Logging in
    Given I am on "/educate"
    Then I should see "THE GLOBAL mBC VISION 2025"
    And I press "Innovate"
    Then I should see "Please make a selection."


