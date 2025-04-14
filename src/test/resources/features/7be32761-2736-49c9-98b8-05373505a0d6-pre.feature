
Feature: SWAG_FEATURE
Scenario Outline: VERIFY_NEW_USER_LOGIN_SWAG
    Given <user> is on <Swag Labs> page
    When he enters the value <username_value> in the field named <username_element>
    And he enters the value <password_value> in the field named <password_element>
    And he clicks the button named <login>
    Then He should be able to view <swag_labs_page> in the field
     Examples:     
          |  user  |  Swag Labs  |  username_value  |  username_element  |  password_value  |  password_element  |  login  |  swag_labs_page  |  
