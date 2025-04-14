
Feature: Upload_Automation
Scenario Outline: VERIFY_DOC_UPLOAD
    Given <user> is on <demoautomation> page
    When he clicks the button identified by xpath <skip_login_page>
    And he clicks the button identified by xpath <more_button_auto>
    And he clicks the button identified by xpath <file_upload_auto>
    And he clicks the button named <browse_auto>
    Then he should be able to view <uploaded_file> in the field
     Examples:     
          |  user  |  demoautomation  |  skip_login_page  |  more_button_auto  |  file_upload_auto  |  browse_auto  |  uploaded_file  |  
          |  john.doe@example.com  |  https://demo.automationtesting.in/Index.html  |  //*[@id='enterimg']  |  //*[@id='header']/nav/div/div[2]/ul/li[9]/a  |  //*[@id='header']/nav/div/div[2]/ul/li[9]/ul/li[4]/a  |  input4[]  |  File input - Multi select  |  
