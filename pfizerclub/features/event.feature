Feature: Registering for an Event
     In order to register for an event.


@javascript
Scenario: Testing registeration for an event.
	Given I am on "/event"
	And I follow "詳情"
	And I fill in "用戶名稱" with "prathaponmail@gmail.com"
	And I fill in "密碼" with "Pfizer@123"
	And I press "edit-submit"
	And I select "1" from "參加人數 "
	And I fill in "參加者的姓名" with "Kevin"
	And I press "提交"
	Then I should see "Thank you"
