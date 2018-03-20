Feature: Educate,Activate,Innovate Tab
  Educate,Activate,Innovate are the tabs for Breastcancer

@javascript
Scenario: 1.Educate,Activate,Innovate Tab
	Given I am on "/educate"
    Then I should see "THE GLOBAL mBC VISION 2025"
    When I am on "/innovate#nav"
    Then I should see "SETTING MEANINGFUL GOALS"
    When I am on "activate#nav"
    Then I should see "THE GLOBAL BREAST CANCER COMMUNITY"


