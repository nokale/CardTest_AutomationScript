
Feature: ARTOFTESTING_ECOM
Scenario Outline: VERIFY_LOGIN_ARTOFTESTING
    Given <user> is on <artoftesting> page
    When he clicks the button identified by xpath <ecom_artoftesting_loginbutton>
    Then he should be able to view <artOfTesting_Ecom> in the field
     Examples:     
          |  user  |  artoftesting  |  ecom_artoftesting_loginbutton  |  artOfTesting_Ecom  |  
          |  john.doe@example.com  |  https://ecommerce.artoftesting.com/  |  //*[@id='root']/div/div[1]/div/div/div/div[1]/form/button  |  Dummy Ecommerce  |  
