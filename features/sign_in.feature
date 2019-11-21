Feature: Sign in
  Scenario: Successful login
    Given I see log in page
    When I fill login form with valid credentials
    Then I become logged in user