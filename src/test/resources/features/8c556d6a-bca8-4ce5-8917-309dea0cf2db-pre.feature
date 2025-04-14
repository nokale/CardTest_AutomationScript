
Feature: ADACTIN_SEARCH
Scenario Outline: VERIFY_SEARCHHOTEL_ADACTIN
    Given <user> is on <adactin> page
    When he enters the value <username_login_value> in the field named <username_login_element>
    And he enters the value <pass_login_value> in the field named <password_login_element>
    And he clicks the button identified by xpath <adactin_login>
    And he clicks the button identified by xpath <add_location>
    And he clicks the button identified by xpath <add_location_option1>
    And he clicks the button identified by xpath <search>
    Then he should be able to view <adactin_searchpage> in the field
     Examples:     
          |  user  |  adactin  |  username_login_value  |  username_login_element  |  pass_login_value  |  password_login_element  |  adactin_login  |  add_location  |  add_location_option1  |  search  |  adactin_searchpage  |  
          |  username  |  https://adactinhotelapp.com/index.php  |  CardTestAI  |  //*[@id='username']  |  Welcome@123  |  //*[@id='password']  |  https://adactinhotelapp.com/index.php  |  //*[@id='location']  |  //*[@id='location']/option[2]  |  //*[@id='Submit']  |  https://adactinhotelapp.com/SelectHotel.php  |  
