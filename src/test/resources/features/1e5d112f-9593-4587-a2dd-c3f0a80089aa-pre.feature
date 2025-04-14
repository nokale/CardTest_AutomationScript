
Feature: NEW_USER_A
Scenario Outline: ADACTIN_NEW_USER
    Given <user> is on <adactin> page
    When he clicks the button identified by xpath <new_User_Register_Here>
    And he enters the value <username_name_value> in the field named <username_name_element>
    And he enters the value <password_pass_value> in the field named <password_pass_element>
    And he enters the value <confirm_Password_value> in the field named <confirm_Password_element>
    And he enters the value <full_Name_value> in the field named <full_Name_element>
    And he enters the value <email_address_value> in the field named <email_address_element>
    Then He should be able to view <adatin_register_page> in the field
     Examples:     
          |  user  |  adactin  |  new_User_Register_Here  |  username_name_value  |  username_name_element  |  password_pass_value  |  password_pass_element  |  confirm_Password_value  |  confirm_Password_element  |  full_Name_value  |  full_Name_element  |  email_address_value  |  email_address_element  |  adatin_register_page  |  
          |  John Doe  |  https://adactinhotelapp.com/index.php  |  //*[@id='login_form']/table/tbody/tr[7]/td/a  |  VeriniteCardtest  |  username  |  Verinite@123  |  password  |  Verinite@123  |  re_password  |  Verinite technology  |  full_name  |  Verinite@verinite.com  |  email_add  |  https://adactinhotelapp.com/Register.php  |  
