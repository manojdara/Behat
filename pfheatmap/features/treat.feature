Feature: Test,Plan,Treat Pages
	All the pages navigation can be seen.Patient stories tile is present in the treat page. Where it consists of all the patient stories.

@javascript
Scenario: 3. Patient Stories 
	Given I am on "/"
	And I follow "Test"
	Then I should see "United We Test Quest"
	When I follow "Treat"
	And I go to "/treat/patient-stories"
	Then I should see "Juanita"
	When I go to "/treat/patient-stories/meet-juanita"
	And I follow "Plan"
	Then I should see "Conversation Checklist"
	