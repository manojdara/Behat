Feature: To request a new password with a non-registered e-mail-id.
	User can request a password from this link.

@javascript
Scenario: Forgot Password
	Given I am on "/account/password"
	And I fill in "請輸入會員登記時所提供的電郵地址，我們將會發送重設密碼電郵至閣下之電郵信箱。" with "light400d@gmail.com"
	And I fill in "驗証問題"
	And I press "edit-submit"
	Then I should see "電郵地址輸入有誤，請重新輸入。如無法提供，請電郵至pfizerclubhk@pfizer.com或致電輝瑞會熱線29601838與我們聯絡。"
