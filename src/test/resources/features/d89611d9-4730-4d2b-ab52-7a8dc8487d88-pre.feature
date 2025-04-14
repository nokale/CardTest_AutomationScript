
Feature: Delinquency
Scenario Outline: CREATE_CUSTOMER
    Given <user> is on <add_customer_url> page
    When he enters <customer_full_name> in the field identified by <full_name_locator>
    And he enters the value <Address> in the field identified by <xpathlocator>
    And he enters the value <mobile_number> in the field identified by <mobnumberlocator>
    Then The customer get created
     Examples:     
          |  user  |  add_customer_url  |  customer_full_name  |  full_name_locator  |  Address  |  xpathlocator  |  mobile_number  |  mobnumberlocator  |  
          |  admin  |  https://localhost:8090/customerurl  |  Josheph Joe  |  //input[@id='CustFullName']  |  Pune  |  //input[@value='Address']  |  8968794763  |  //input[@id='MobNumber']  |  

Scenario Outline: CREATE_ACCOUNT
    Given <user> is on <add_account_url> page
    When he enters <customer_name> in the field identified by <customerNameLocator>
    And he enters <cust_Number> in the field identified by <MobileNumberLocator>
    And he clicks the button identified by xpath <submit_btn>
    Then he should be able to view <account_number> in the field
     Examples:     
          |  user  |  add_account_url  |  customer_name  |  customerNameLocator  |  cust_Number  |  MobileNumberLocator  |  submit_btn  |  account_number  |  
          |  user123  |  https://localhost:9080/applicationCreation  |  Johnn  |  //input[@id='cust_n']  |  8967453769  |  //input[@id='mnumber']  |  //button[@id='subbtn']  |  1234567890  |  

Scenario Outline: CREATE_CARD
    Given <user> is on <createCard> page
    When he enters the value <productId> in the field identified by <productElemId>
    And he enters the value <accountID> in the field identified by <accountElemId>
    And he enters the value <embossingName> in the field identified by <embossingNameElemId>
    And he clicks the button identified by xpath <submitCXpath>
    Then he should be able to view <cardCreationSuccessMessage> in the field identified by <messageCElemId>
     Examples:     
          |  user  |  createCard  |  productId  |  productElemId  |  accountID  |  accountElemId  |  embossingName  |  embossingNameElemId  |  submitCXpath  |  cardCreationSuccessMessage  |  messageCElemId  |  
          |  user123  |  http://localhost:8882/createCard  |  PROD123  |  productIdentifier  |  ACCT456  |  accountIdentifier  |  John Doe  |  embossingNameIdentifier  |  //button[@id='btnSubmit']  |  Card has been created successfully!  |  //div[@id='ccmsg']  |  
