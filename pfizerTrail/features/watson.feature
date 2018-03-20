Feature: Breast Cancer Vision Header
  On click of Breast Cancer Vision Header title takes user to the Home page.

@BeforeStep @javascript
Scenario: 1.Logging in
	Given I am at "/"
    When I fill in "Username" with "pfizer-admin"
    And I fill in "edit-pass " with "Pfizer@123"
    And I press " Log in"




