Feature: Article to be Searched
  In order to use the tag search functionality.


@javascript
Scenario: 1.Searching for Articles based on tags
	Given I am on "/pfizer_login"
    And I fill in "Username" with "editor"
    And I fill in "Password" with "Editor@123"
    And I press "Login"
    And I follow "op"
    And I fill in "Search..." with "cx"
    And I follow "op"
    Then I should see "Adding science to your customer journey planning"

