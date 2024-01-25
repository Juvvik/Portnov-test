@ StoreStage_Feature
  Feature: Store Stage tests
    Scenario: Responsive UI Validation
      Given I open url "https://store-stage.portnov.com/"
      Then I should see page title contains "E-Market"
      And I resize window to 700 and 1000
      And I take screenshot
      Then element with xpath "//nav[@id='site-navigation']" should not be displayed
      And I resize window to 800 and 1000
      And I take screenshot
      Then element with xpath "//nav[@id='site-navigation']" should be displayed

    @e2e_htc
    Scenario: HTC e2e scenario
      Given I open url "https://nop-qa.portnov.com/"
      Then element with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'HTC')]" should be displayed
      Then I click on element using JavaScript with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'HTC')]"
      Then element with xpath "//div[contains(@class, 'product-review-links')]" should not contain text "0"
      Then I clear element with xpath "//input[@id='product_enteredQuantity_18']"
      Then I type "3" into element with xpath "//input[@id='product_enteredQuantity_18']"
      Then I click on element using JavaScript with xpath "//button[@id='add-to-cart-button-18']"
      And I wait for element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" to be present
      And element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" should contain text "added"
#    Then I wait for 3 sec
      And I click on element with xpath "//a/span[contains(text(),'Shopping cart')]"
      And element with xpath "//td[contains(@class, 'subtotal')]/span" should contain text "$735.00"
 #   Then I wait for 2 sec


    @E2EnopCommerce
      Scenario: Registration and Login
        Given I open url "https://nop-qa.portnov.com/"
        Then I should see page title contains "Your store"
        When I click on element with xpath "//a[contains(text(),'Register')]"
        Then element with xpath "//a[contains(text(),'Register')]" should be displayed
        And I click on element with xpath "//input[@id='gender-female']"
        And I type "Juvvi" into element with xpath "//input[@id='FirstName']"
        And I type "Zarifyar" into element with xpath "//input[@id='LastName']"
        And I type "Test55@gmail.com" into element with xpath "//input[@id='Email']"
        And I type "Test123" into element with xpath "//input[@id='Password']"
        And I type "Test123" into element with xpath "//input[@id='ConfirmPassword']"
        Then I click on element with xpath "//button[@id='register-button']"
    #    Then element with xpath "//div[contains(text(),'Your registration completed')]" should be displayed
        Then I click on element with xpath "//a[contains(@class, 'register-continue-button')]"
        Then I wait for 2 sec


   #   @E2Enopcommerce
   #   Feature: Product selection
   #     Scenario: Product selection and filter

        


