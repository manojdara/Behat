Feature: Homepage



@javascript
Scenario: 1.Navigation to Homepage.
	Given I am on "/"
    And I follow "205w39nyc"
    Then I should see "BRANDS"

