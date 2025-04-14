
Feature: YSSTYLE_TEST
Scenario Outline: VERIFY_YSSTYLE_LOGIN
    Given <user> is on <ysstyle_login_page> page
    When he clicks the button identified by xpath <ysstyle_login_icon>
    And he clicks the button identified by xpath <ysstyle_signin>
    And he enters the value <email_add_ysstyle_value> in the field named <email_add_ysstyle_element>
    And he enters the value <pass_login_value> in the field named <password_login_element>
    And he clicks the button identified by xpath <sign_in_ysstyle>
    Then he should be able to view <ysstyle_home_page> in the field
     Examples:     
          |  user  |  ysstyle_login_page  |  ysstyle_login_icon  |  ysstyle_signin  |  email_add_ysstyle_value  |  email_add_ysstyle_element  |  pass_login_value  |  password_login_element  |  sign_in_ysstyle  |  ysstyle_home_page  |  
          |  testuser123  |  https://www.yesstyle.com/en/home.html  |  //*[@id=':R1n9q8j9uurfb:']/i/svg  |  //*[@id='menu-appbar']/div[3]/ul/li[1]/a  |  akankshagajbe@rediffmail.com  |  //*[@id='input_3']  |  Welcome@123  |  password  |  //*[@id='tab-content-1']/div/div/form/button  |  Beauty, Skin Care, and Health and Wellness \| YesStyle  |  
