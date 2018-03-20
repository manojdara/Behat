Feature: Selection options.
  By Clicking on Different options on Brands menu will navigate the user to that selected section.


@javascript
Scenario: 1. Find a store near you
	Given I am on "/"
	And I follow "CK Calvin Klein"
	Then I should see "Calvin Klein"
	When I follow "Jeans"
	Then I should see "Jeans"
	When I follow "Performance"
	Then I should see "Advertising"
	When I follow "Underwear"
	Then I should see "Fall 2017"
	When I follow "Watches + Jewelry"
	Then I should see "Watches + Jewelry"
	When I follow "Fragrance"
	Then I should see "Fragrance"

