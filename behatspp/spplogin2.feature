Feature: Testing Request new password.
  	In case the user forgot his password,then he can request for a new password.

  @javascript
  Scenario: Searching for a page that does exist
  	When I visit "/"
  	And I click "Forgotten your sign in details?"
	And I fill in "edit-username--2" with "mexico-test@pfizer.com" 
	Then I press "Request new password"
	