
Feature: ARTOFTESTING_ECOM_SORTING
Scenario Outline: VERIFY_SORTING_ARTOFTESTING
    Given <user> is on <artOfTesting_ecom> page
    When he clicks the button identified by xpath <ecom_artoftesting_loginbutton>
    And he clicks the button identified by xpath <sort_dropdown>
    And he clicks the button identified by xpath <sort_dropdown_option>
    Then he should be able to view <artOfTesting_Ecom> in the field
     Examples:     
          |  user  |  artOfTesting_ecom  |  ecom_artoftesting_loginbutton  |  sort_dropdown  |  sort_dropdown_option  |  artOfTesting_Ecom  |  
          |  testsorting12345  |  https://ecommerce.artoftesting.com/  |  //*[@id='root']/div/div[1]/div/div/div/div[1]/form/button  |  //*[@id='root']/div/div[3]/div/div/select  |  //*[@id='root']/div/div[3]/div/div/select/option[2]  |  Dummy Ecommerce  |  
