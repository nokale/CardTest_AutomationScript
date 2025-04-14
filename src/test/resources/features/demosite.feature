Feature: Login to Saucelabs website

  Scenario Outline: Validating Login process for User with valid product value
    Given User is on Login Screen
    When User enters username and password and clicks on login button
    Then User selects <productName> from the list
    And User verify the product price is equal to the <productPrice>
   Examples:
     | productName             | productPrice |
     | Sauce Labs Backpack     | 29.99        |



