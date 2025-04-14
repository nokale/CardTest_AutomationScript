
Feature: SWAG_LABS_TESTING
Scenario Outline: VERIFY_SWAG_LABS_TESTING
    Given <user> is on <swag_labs_login> page
    When he enters the value <user_name_value> in the field named <user_name_element>
    And he enters the value <pass_word_value> in the field named <pass_word_element>
    And he clicks the button named <log_in>
    Then he should be able to view <swag_labs_page> in the field
     Examples:     
          |  user  |  swag_labs_login  |  user_name_value  |  user_name_element  |  pass_word_value  |  pass_word_element  |  log_in  |  swag_labs_page  |  
          |  randomString()  |  https://www.saucedemo.com/  |  standard_user  |  user-name  |  secret_sauce  |  password  |  login-button  |  Swag Labs  |  
