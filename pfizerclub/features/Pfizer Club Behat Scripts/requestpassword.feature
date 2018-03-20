Feature: To request a new password.
	User can request a password from this link.

@javascript
Scenario: Forgot Password
	Given I am on "/account/password"
	And I fill in "請輸入會員登記時所提供的電郵地址，我們將會發送重設密碼電郵至閣下之電郵信箱。" with "prathaponmail@gmail.com"
	And I fill in "驗証問題"
	And I press "edit-submit"
	Then I should see "我們已發送重設密碼電郵到您的電郵地址，請根據電郵中的指示，進行密碼重設。"
