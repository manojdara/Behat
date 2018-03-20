Feature: Reset Password
	In the case if the user forgot his password.
	The user can reset his password.


@javascript
Scenario: 2.To Reset Password.
	Given I am on "/user/password"
	When I fill in "Username or e-mail address " with "testuser1"
	And I press "E-mail new password"
	Then I should see "Further instructions have been sent to your e-mail address."