Feature: app is running
   Scenario: The app returns a test value
     When I sent GET request to "/status"
     Then I should receive "OK" with 200