
Feature: ISO_SIMULATION
Scenario Outline: simulator-iso-validation
    Given <user> is on <url> page
    When he enters the value <data> in the field identified by <elementId>
    And he clicks the button identified by xpath <buttonXpath>
    Then he should be able to view <output> in the field
     Examples:     
          |  user  |  url  |  data  |  elementId  |  buttonXpath  |  output  |  
          |  Alice  |  http://localhost:8882/ISOMessage  |  hello  |  newDEinfo[0].DEValue  |  //button[@id='btnExecute']  |  Simulator  |  
