Feature: Validate User Creation via POST API

 Scenario Outline: Validate API Request with <requestType> method
    Given User sets the API endpoint as <endpoint>
    When User sets method type as <requestType>
    And User adds request payload if required:
      | key    | value         |
      | <key1> | <inputValue1> |
      | <key2> | <inputValue2> |
      | <key3> | <inputValue3> |
   And User hits the endpoint
    Then the response status code should be <statusCode>
    Examples:
      | endpoint                                   | key1  | inputValue1        | key2 | inputValue2                               | key3   | inputValue3 | requestType | statusCode |
      | https://jsonplaceholder.typicode.com/posts | title | Automation Testing | body | This is a test API for automation testing | userId | 2           | POST        | 201        |
