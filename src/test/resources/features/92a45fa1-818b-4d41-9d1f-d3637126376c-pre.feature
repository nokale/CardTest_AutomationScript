
Feature: TELERIK_TESTING
Scenario Outline: VERIFY_THAT_USER_IS_ABLE_TO_CHECK_ALL_FIELDS
    Given <user> is on <telerik_page> page
    When he clicks the button identified by xpath <all_products>
    And he clicks the button identified by xpath <product_kedo>
    Then he should be able to view <telerik_kedo_page> in the field
     Examples:     
          |  user  |  telerik_page  |  all_products  |  product_kedo  |  telerik_kedo_page  |  
          |  testuser123  |  https://www.telerik.com/  |  //*[@id='js-tlrk-nav']/section/div/ul/li/button  |  //*[@id='js-tlrk-nav-dash']/div/div/div[2]/div[1]/div[1]/div[1]/a[1]  |  https://www.telerik.com/kendo-ui  |  
