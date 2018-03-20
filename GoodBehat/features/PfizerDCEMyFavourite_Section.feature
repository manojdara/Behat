Feature: Article to be present in my favourite section
  In order to make the article to be present in my favourite section of the Dashboard section.


@javascript
Scenario: 1.Favourite Articles
	Given I am on "/pfizer_login"
    And I fill in "Username" with "editor"
    And I fill in "Password" with "Editor@123"
    And I press "Login"
    When I am on "/content/3-keys-killer-webinar-strategy"
    And I follow "nofollow"
    And I follow "Dashboard"
    Then I should see text matching "3 Keys to a Killer Webinar Strategy"

