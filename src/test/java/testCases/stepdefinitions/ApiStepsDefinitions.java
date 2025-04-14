package testCases.stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.annotations.Steps;
import pages.demosite.UserSteps;

public class ApiStepsDefinitions {

    @Steps
    UserSteps usersteps;

    private Response response;

    @Given("{} sets the API endpoint as {}")
    public void UserSetsTheAPIEndpoint(String user,String apiEndpoint) {
        usersteps.setApiEndpoint(apiEndpoint);
    }

    @When("User sets method type as {}")
    public void UserSetsRequestType(String requestType) {
        usersteps.setRequestType(requestType);
    }

    @And("User hits the endpoint")
    public void userHitsTheEndpoint() {
        response = usersteps.sendRequest();
    }

    @And("User adds request payload if required:")
    public void userAddsRequestPayloadIfRequired(io.cucumber.datatable.DataTable dataTable) {
        usersteps.addRequestPayload(dataTable);
    }

    @Then("the response status code should be {int}")
    public void theResponseStatusCodeShouldBe(int expectedStatusCode) {
        usersteps.validateResponseCode(expectedStatusCode);
    }
}
