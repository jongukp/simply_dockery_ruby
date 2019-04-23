Feature: Test User data
  Scenario: User exists
#    Given: I have users
    When I send GET request to users endpoint
    Then I should get users back