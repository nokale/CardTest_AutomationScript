
Feature: Delinquency
Scenario Outline: CREATE_CUSTOMER
    Given <user> is on <add_customer_url> page
    When he enters <customer_full_name> in the field identified by <full_name_locator>
    And he enters the value <Address> in the field identified by <xpathlocator>
    And he enters the value <mobile_number> in the field identified by <mobnumberlocator>
    Then The customer get created
     Examples:     
          |  user  |  add_customer_url  |  customer_full_name  |  full_name_locator  |  Address  |  xpathlocator  |  mobile_number  |  mobnumberlocator  |  
          |  https://localhost:8090/customerurl  |  Josheph Joe  |  //input[@id='CustFullName']  |  Pune  |  //input[@value='Address']  |  8968794763  |  //input[@id='MobNumber']  |  

Scenario Outline: CREATE_ACCOUNT
    Given <user> is on <add_account_url> page
    When He enters <account_billingCycle> in the billing cycle field
    And He enters <account_creditLimit> in the credit limit field
    And He clicks the Submit button
    Then The account is created
     Examples:     
          |  user  |  add_account_url  |  account_billingCycle  |  account_creditLimit  |  
          |  https://localhost:9080/applicationCreation  |  

Scenario Outline: CREATE_CARD
    Given <user> is on <createCard> page
    When He enters the value <productId> in the field identified by <productElemId>
    And He enters the value <accountID> in the field identified by <accountElemId>
    And He enters the value <embossingName> in the field identified by <embossingNameElemId>
    And He clicks the button identified by xpath <submitCXpath>
    Then He should be able to view <cardCreationSuccessMessage> in the field identified by <messageCElemId>
     Examples:     
          |  user  |  createCard  |  productId  |  productElemId  |  accountID  |  accountElemId  |  embossingName  |  embossingNameElemId  |  submitCXpath  |  cardCreationSuccessMessage  |  messageCElemId  |  
          |  http://localhost:8882/createCard  |  productIdentifier  |  accountIdentifier  |  embossingNameIdentifier  |  //button[@id='btnSubmit']  |  //div[@id='ccmsg']  |  
