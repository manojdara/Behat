Feature: Breast Cancer Vision Header
  On click of Breast Cancer Vision Header title takes user to the Home page.

@javascript
Scenario: 1.Clickable Breast Cancer Vision Header
    When I am on "/innovate"
    Then I should see "SETTING MEANINGFUL GOALS"
    When I click "Breast Cancer Vision"
    Then I should be on "/educate"
    And I should see "A 10-YEAR REVIEW OF mBC"
    



