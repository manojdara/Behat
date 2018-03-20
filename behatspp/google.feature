Feature: Google Home Page
  To verify google search option.

  @javascript
  Scenario: Search For ITTB
    Given I am on "/"
    And I fill in "lst-ib" with "ITTB"
    And I press "btnG"
    And I should be on "https://www.google.co.in/?gfe_rd=cr&ei=2xEcWce6NoX38AfU_I7oDw#q=ITTB"
    Then I follow "About ITTB" as the first result
