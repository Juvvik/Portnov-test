@quote-outline
  Feature: Quote project outline tests
@quote_data
  Scenario: Application test
  Given I open url "http://quote-stage.portnov.com/"
  Then I should see page title contains "Quote"
  And I click on element with xpath "//input[@id='name']"
  Then element with xpath "//div[@id='nameDialog']" should be displayed
  Then I type "Juvvi" into element with xpath "//input[@id='firstName']"
  Then I type "Zarifyar" into element with xpath "//input[@id='lastName']"
  And I click on element with xpath "//span[contains(text(),'Save')]"
  Then I type "Juvvi test" into element with xpath "//input[@name='username']"
  Then I type "test@gmail.com" into element with xpath "//input[@name='email']"
  Then I type "Test123" into element with xpath "//input[@name='password']"
  Then element with xpath "//input[@id='confirmPassword']" should be enabled
  Then I type "Test123" into element with xpath "//input[@id='confirmPassword']"
  And I click on element with xpath "//button[@id='formSubmit']"
  And I wait for 3 sec