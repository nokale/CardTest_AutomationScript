
Feature: ARTOFTESTING_ECOM_SORTING
Scenario Outline: VERIFY_SORTING_ARTOFTESTING
    Given <user> is on <artOfTesting_Ecom> page
    When he clicks the button identified by xpath <sort_dropdown>
    And he clicks the button identified by xpath <sort_dropdown_option>
    Then he should be able to view <artOfTesting_Ecom> in the field
     Examples:     
          |  user  |  artOfTesting_Ecom  |  sort_dropdown  |  sort_dropdown_option  |  artOfTesting_Ecom  |  
