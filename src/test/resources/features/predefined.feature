@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  @bing
  Scenario: Bing test for cucumber
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then I type "Cucumber" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "//label[@id='search_icon']"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//main[@aria-label='Search Results']" to be present
    Then I should see page title as "Cucumber - Search"
    Then element with xpath "//main[@aria-label='Search Results']" should contain text "Cucumber"


  @yahoo
  Scenario: Yahoo test for shoes
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo | Mail, Weather, Search, Politics, News, Finance, Sports & Videos"
    Then I type "Shoes" into element with xpath "//*[@name='p']"
    Then I click on element using JavaScript with xpath "//button[@id='ybar-search']"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='results']" to be present
    Then I should see page title as "Shoes - Yahoo Search Results"
    Then element with xpath "//div[@id='results']" should contain text "Shoes"


    @gibiru
    Scenario: Gibiru Scenario 
      Given I open url "https://gibiru.com/"
      Then I should see page title as "Gibiru – Protecting your privacy since 2009"
      And element with xpath "//a[contains(text(), 'Mobile App')]" should be disabled
      Then I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"
  #    Then I wait for 2 sec

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


     @nop-order
     Scenario: Nop order test scenario
      Given client open main page
      Then main page title should be displayed
      When client click "HTC" item
      Then client should see reviews with at least 1 review
      When client set items quantity to 3
      And client click add to cart button
      Then client should see added to cart notification
      When client opens shopping cart
      Then items total amount should be "735.00"





