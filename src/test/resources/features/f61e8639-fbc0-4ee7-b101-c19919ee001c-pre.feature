
Feature: SWAG_LABS_TESTING
Scenario Outline: VERIFY_SWAG_LABS_TESTING
    Given <user> is on <swag_labs_login> page
    When he enters the value <user_name_value> in the field named <user_name_element>
    And he enters the value <pass_word_value> in the field named <pass_word_element>
    And he clicks the button named <log_in>
    Then he should be able to view <swag_labs_page> in the field
     Examples:     
          |  user  |  swag_labs_login  |  user_name_value  |  user_name_element  |  pass_word_value  |  pass_word_element  |  log_in  |  swag_labs_page  |  
          |  testuser123  |  https://www.saucedemo.com/  |  standard_user  |  user-name  |  secret_sauce  |  password  |  login-button  |  Swag Labs  |  

Scenario Outline: VERIFY_THAT_USER_IS_ABLE_TO_ADD_AND_REMOVE_ITEM_INTO_CART
    Given <user> is on <swag_labs_login> page
    When he enters the value <user_name_value> in the field named <user_name_element>
    And he enters the value <pass_word_value> in the field named <pass_word_element>
    And he clicks the button named <log_in>
    And he clicks the button named <add_to_cart>
    And he clicks the button named <remove_cart>
    Then he should be able to view <swag_labs_page> in the field
     Examples:     
          |  user  |  swag_labs_login  |  user_name_value  |  user_name_element  |  pass_word_value  |  pass_word_element  |  log_in  |  add_to_cart  |  remove_cart  |  swag_labs_page  |  
          |  automated_tester  |  https://www.saucedemo.com/  |  standard_user  |  user-name  |  secret_sauce  |  password  |  login-button  |  add-to-cart-sauce-labs-backpack  |  remove-sauce-labs-backpack  |  Swag Labs  |  

Scenario Outline: VERIFY_THAT_USER_IS_ABLE_TO_DO_SORTING
    Given <user> is on <swag_labs_login> page
    When he enters the value <user_name_value> in the field named <user_name_element>
    And he enters the value <pass_word_value> in the field named <pass_word_element>
    And he clicks the button named <log_in>
    And he clicks the button named <add_to_cart>
    And he clicks the button named <remove_cart>
    And he clicks the button identified by xpath <sort_button>
    And he clicks the button identified by xpath <name_z_to_a>
    And he clicks the button identified by xpath <price_low_to_high>
    And he clicks the button identified by xpath <name_high_to_low>
    Then he should be able to view <swag_labs_page> in the field
     Examples:     
          |  user  |  swag_labs_login  |  user_name_value  |  user_name_element  |  pass_word_value  |  pass_word_element  |  log_in  |  add_to_cart  |  remove_cart  |  sort_button  |  name_z_to_a  |  price_low_to_high  |  name_high_to_low  |  swag_labs_page  |  
          |  sort_test_user  |  https://www.saucedemo.com/  |  standard_user  |  user-name  |  secret_sauce  |  password  |  login-button  |  add-to-cart-sauce-labs-backpack  |  remove-sauce-labs-backpack  |  //*[@id='header_container']/div[2]/div/span/select  |  //*[@id='header_container']/div[2]/div/span/select  |  //*[@id='header_container']/div[2]/div/span/select  |  //*[@id='header_container']/div[2]/div/span/select  |  Swag Labs  |  
