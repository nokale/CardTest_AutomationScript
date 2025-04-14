
Feature: ADACTIN_SEARCH
Scenario Outline: VERIFY_ADDHOTEL_ADACTIN
    Given <user> is on <adactin> page
    When he enters the value <username_login_value> in the field named <username_login_element>
    And he enters the value <pass_login_value> in the field named <password_login_element>
    And he clicks the button named <adactin_login>
    And he clicks the button named <add_location>
    And he clicks the button identified by xpath <add_location_option1>
    And he clicks the button named <search>
    And he clicks the button named <select_hotel>
    And he clicks the button named <continue>
    And he enters the value <firstname_bookhotel_value> in the field named <firstname_bookhotel_element>
    And he enters the value <lastname_bookhotel_value> in the field named <lastname_bookhotel_element>
    And he enters the value <billingAdd_bookhotel_value> in the field named <billingAdd_bookhotel_element>
    And he enters the value <creditcardno_bookhotel_value> in the field named <creditcardno_bookhotel_element>
    And he clicks the button named <credit_card_type>
    And he clicks the button identified by xpath <credit_card_type_option2>
    And he clicks the button named <exp_month>
    And he clicks the button identified by xpath <expiry_month_option2>
    And he clicks the button named <exp_year>
    And he clicks the button identified by xpath <expiry_year_option2>
    And he enters the value <cvv_num_value> in the field named <cvv_num_element>
    And he clicks the button named <book_now>
    Then he should be able to view <booking_confirm> in the field
     Examples:     
          |  user  |  adactin  |  username_login_value  |  username_login_element  |  pass_login_value  |  password_login_element  |  adactin_login  |  add_location  |  add_location_option1  |  search  |  select_hotel  |  continue  |  firstname_bookhotel_value  |  firstname_bookhotel_element  |  lastname_bookhotel_value  |  lastname_bookhotel_element  |  billingAdd_bookhotel_value  |  billingAdd_bookhotel_element  |  creditcardno_bookhotel_value  |  creditcardno_bookhotel_element  |  credit_card_type  |  credit_card_type_option2  |  exp_month  |  expiry_month_option2  |  exp_year  |  expiry_year_option2  |  cvv_num_value  |  cvv_num_element  |  book_now  |  booking_confirm  |  
