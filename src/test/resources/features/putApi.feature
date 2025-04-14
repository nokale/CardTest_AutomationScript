Feature: Update user details using PUT API

  Scenario Outline: Update user name and job title
    Given User sets the API endpoint as <endpoint>
    When User sets method type as <requestType>
    And User adds request payload if required:
      | key    | value         |
      | <key1> | <inputValue1> |
      | <key2> | <inputValue2> |
    And User hits the endpoint
    Then the response status code should be <statusCode>

    Examples:

      | endpoint                      | requestType | key1 | inputValue1 | key2 | inputValue2          | statusCode |
      | https://reqres.in/api/users/2 | PUT         | name | Neha Khot   | job  | Associate Consultant | 200        |