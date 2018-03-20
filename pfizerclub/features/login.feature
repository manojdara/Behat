Feature: Login
	Testing  the Login

@javascript
Scenario: Testing the Login.
	Given I am on "/"
	And I follow "登入/註冊" 
	Then I should be on "/account/login"
	And I fill in "用戶名稱" with "prathaponmail@gmail.com"
	And I fill in "密碼" with "Pfizer@123"
	And I press "edit-submit"
	Then I should be on "/account/profile"
