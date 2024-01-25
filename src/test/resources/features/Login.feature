Feature: Login
  @login1
  Scenario: Successful login with Valid Credentials
    Given User opens the website
    Then User clicks on login
    And User enters email "juvvik@gmail.com and password as Juvvi1234
    And User clicks Login
    Then Page title should be Registered
    And User clicks continue
    When User click on logout link
    Then User should see the main page with login button


