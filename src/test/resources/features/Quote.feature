@quote-feature
  Feature: Quote project tests
    Background:Open web application
      Given I open url "http://quote-stage.portnov.com/"
      Then I should see page title contains "Quote"


    @quote1
    Scenario: Basic form tests/Form Validations (Negative)
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='name-error']" should contain text "This field is required."
      Then element with xpath "//label[@id='username-error']" should contain text "This field is required."
      Then element with xpath "//label[@id='email-error']" should contain text "This field is required."
      Then element with xpath "//label[@id='password-error']" should contain text "This field is required."

    @quote2
    Scenario: Successful submission
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
      And I switch to iframe with xpath "//iframe[@name='additionalInfo']"
      And I type "Contact Person Name" into element with xpath "//input[@id='contactPersonName']"
      And I type "0123456789" into element with xpath "//input[@id='contactPersonPhone']"
      And I switch to default content
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//*[contains(text(), 'Submitted Application')]" should be displayed
      And element with xpath "//b[@name='firstName']" should contain text "juvvi"
      And element with xpath "//b[@name='username']" should contain text "Juvvi test"
      And I wait for 3 sec
      And I take screenshot





      

