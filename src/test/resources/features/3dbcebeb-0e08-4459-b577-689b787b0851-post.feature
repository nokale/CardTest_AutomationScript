
Feature: REST_ASSURED_API
Scenario Outline: VALIDATE_GET_API
    Given <user> sets the API endpoint as <requestUrl>
    When User sets method type as <methodType>
    And User hits the endpoint
    Then the response status code should be <statusCode1>
     Examples:     
          |  user  |  requestUrl  |  methodType  |  statusCode1  |  
          |  janedoe456  |  https://fake-json-api.mock.beeceptor.com/users  |  GET  |  400  |  
