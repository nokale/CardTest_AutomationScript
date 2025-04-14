
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
          |  jane  |  https://adactinhotelapp.com/index.php  |  CardTestAI  |  username  |  Welcome@123  |  password  |  login  |  location  |  //*[@id='location']/option[2]  |  Submit  |  radiobutton_1  |  continue  |  Adactin.com - Book A Hotel  |  

Scenario Outline: VERIFY_CANCELHOTEL_ADACTIN
    Given <user> is on <adactin> page
    When he enters the value <username_login_value> in the field named <username_login_element>
    And he enters the value <pass_login_value> in the field named <password_login_element>
    And he clicks the button named <adactin_login>
    And he clicks the button identified by xpath <booked_itinerary>
    And he clicks the button identified by xpath <select_cancel_itinerary>
    And he clicks the button named <cancelall_selected>
    Then he should be able to view <adactin_selecthotel> in the field
     Examples:     
          |  user  |  adactin  |  username_login_value  |  username_login_element  |  pass_login_value  |  password_login_element  |  adactin_login  |  booked_itinerary  |  select_cancel_itinerary  |  cancelall_selected  |  adactin_selecthotel  |  
          |  john  |  https://adactinhotelapp.com/index.php  |  CardTestAI  |  username  |  Welcome@123  |  password  |  login  |  /html/body/table[2]/tbody/tr[1]/td[2]/a[2]  |  //*[@id='booked_form']/table/tbody/tr[2]/td/table/tbody/tr[7]/td[1]/input  |  cancelall  |  Adactin.com - Select Hotel  |  
