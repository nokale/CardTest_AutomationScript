Feature: Validate GET API

  Scenario Outline:Validate API Request with <requestType> method

    Given User sets the API endpoint as <endpoint>
    When User sets method type as <requestType>
    And User hits the endpoint
    Then the response status code should be <statusCode>

  Examples:
    | endpoint                                       | requestType | statusCode |
    | https://fake-json-api.mock.beeceptor.com/users | GET         | 200        |
