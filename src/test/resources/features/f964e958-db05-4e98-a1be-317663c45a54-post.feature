
Feature: CARD_ONBOARDING
Scenario Outline: VERIFY_CARD
    Given <user> is on <viewCard> page
    When He enters the value <cardNumber> in the field identified by <cardNumberElemId>
    And He clicks the button identified by xpath <submitVXpathV>
    Then He should be able to view <cardNumber> in the field identified by <cardNumberViewElemId>
    And He should be able to view <embossingName> in the field identified by <embossingNameViewElemId>
     Examples:     
          |  user  |  viewCard  |  cardNumber  |  cardNumberElemId  |  submitVXpathV  |  cardNumber  |  cardNumberViewElemId  |  embossingName  |  embossingNameViewElemId  |  
          |  Sam  |  http://localhost:8882/viewCard  |  1234 5678 9012 3456  |  cardNumberIdentifier  |  //button[@id='btnSubmit']  |  1234 5678 9012 3456  |  cardNumberIdentifier  |  Sam Doe  |  embossingNameIdentifier  |  
