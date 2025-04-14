
Feature: CARD_ONBOARDING
Scenario Outline: CREATE_CARD
    Given <user> is on <createCard> page
    When He enters the value <productId> in the field identified by <productElemId>
    And He enters the value <accountID> in the field identified by <accountElemId>
    And He enters the value <embossingName> in the field identified by <embossingNameElemId>
    And He clicks the button identified by xpath <submitCXpath>
    Then He should be able to view <cardCreationSuccessMessage> in the field identified by <messageCElemId>
     Examples:     
          |  user  |  createCard  |  productId  |  productElemId  |  accountID  |  accountElemId  |  embossingName  |  embossingNameElemId  |  submitCXpath  |  cardCreationSuccessMessage  |  messageCElemId  |  
          |  Sam  |  http://localhost:8882/createCard  |  1234  |  productIdentifier  |  accountIdentifier  |  Sam Doe  |  embossingNameIdentifier  |  //button[@id='btnSubmit']  |  Your card has been successfully created.  |  messageIdentidier  |  
