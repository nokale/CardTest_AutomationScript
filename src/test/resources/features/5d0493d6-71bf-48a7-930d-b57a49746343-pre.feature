
Feature: ADACTIN_SEARCH
Scenario Outline: VERIFY_SEARCHHOTEL_ADACTIN
    Given <user> is on <adactin> page
    When he enters the value <username_login_value> in the field named <username_login_element>
    And he enters the value <pass_login_value> in the field named <password_login_element>
    And he clicks the button named <adactin_login>
    And he clicks the button named <add_location>
    And he clicks the button identified by xpath <add_location_option1>
    And he clicks the button named <search>
    And he clicks the button named <select_hotel>
    And he clicks the button named <continue>
    Then he should be able to view <adactin_bookhotel> in the field
     Examples:     
          |  user  |  adactin  |  username_login_value  |  username_login_element  |  pass_login_value  |  password_login_element  |  adactin_login  |  add_location  |  add_location_option1  |  search  |  select_hotel  |  continue  |  adactin_bookhotel  |  
          |  John Doe  |  https://adactinhotelapp.com/index.php  |  CardTestAI  |  username  |  Welcome@123  |  password  |  login  |  location  |  //*[@id='location']/option[2]  |  Submit  |  radiobutton_1  |  continue  |  Adactin.com - Book A Hotel  |  
