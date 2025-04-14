
Feature: REST_ASSURED_API
Scenario Outline: VALIDATE_POST_API
    Given <user> sets the API endpoint as <endpoint>
    When User sets method type as <requestType>
    And User hits the endpoint
    And User adds request payload if required: 
| key    | value         |
      | <key1> | <inputValue1> |
| <key2> | <inputValue2> |
| <key3> | <inputValue3> |
    Then the response status code should be <statusCode>
     Examples:     
          |  user  |  endpoint  |  requestType  |  key1  |  inputValue1  |  key2  |  inputValue2  |  key3  |  inputValue3  |  statusCode  |  
          |  johndoe123  |  https://jsonplaceholder.typicode.com/posts  |  POST  |  title  |  Automation Testing  |  body  |  This is a test API for automation testing  |  userId  |  2  |  201  |  
