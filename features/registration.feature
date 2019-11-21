Feature: Registration of a new user
  Scenario: Successful registration
    Given Registration page is successfuly loaded
    When I filled all required fields with valid data
    Then I become registrated user
