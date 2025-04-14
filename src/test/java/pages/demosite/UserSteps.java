package pages.demosite;

import io.cucumber.datatable.DataTable;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import net.serenitybdd.annotations.Step;
import net.serenitybdd.core.Serenity;
import org.junit.Assert;

import java.util.HashMap;
import java.util.Map;
import Utils.FailureStorage;

public class UserSteps {
    public static String failureReason = "";
    private Response response;
    private String apiEndpoint;
    private String requestType;
    private Map<String, Object> requestBody = new HashMap<String, Object>();

    @Step("Setting API Endpoint")
    public void setApiEndpoint(String apiUrl) {
        this.apiEndpoint = apiUrl;
    }

    @Step("Setting request type")
    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }

    @Step("Uploading payload for POST request")
    public void addRequestPayload(DataTable dataTable) {
        try {
            if (requestType.equalsIgnoreCase("POST")) {
                dataTable.asMaps().forEach(row -> requestBody.put(row.get("key"), row.get("value")));
            }
        }
        catch (Exception e)
        {
            FailureStorage.addFailureMessage("Step Failure in ApiSteps: " + e.getMessage());
            throw e;
        }
    }

    @Step("Sending request to API")
    public Response sendRequest() {
       try {
           if ("GET".equalsIgnoreCase(requestType)) {
               response = RestAssured.given().log().all().when().get(apiEndpoint);
           } else if ("POST".equalsIgnoreCase(requestType)) {
               response = RestAssured.given().header("Content-Type", "application/json")
                       .body(requestBody)
                       .when()
                       .post(apiEndpoint);
           }else if("PUT".equalsIgnoreCase(requestType)) {
               response = RestAssured.given().header("Content-Type", "application/json")
                       .body(requestBody)
                       .when()
                       .put(apiEndpoint);
           }

           else {
               throw new IllegalArgumentException("Request type not supported: " + requestType);
           }
       }catch (Exception e)
       {
           FailureStorage.addFailureMessage("Exception in ApiSteps: " + e.getMessage());
           Serenity.recordReportData().withTitle("Exception Occurred").andContents(e.getMessage());
           throw e;
       }
        return response;
    }

    @Step("Validating the response status code")
    public void validateResponseCode(int responseStatus) {
        try {
            Assert.assertEquals("Unexpected status code!", responseStatus, response.getStatusCode());
        }
        catch (AssertionError e) {
            FailureStorage.addFailureMessage("Step Assertion Failure in ApiSteps: " + e.getMessage());
            throw e;
        } catch (Exception e) {
            FailureStorage.addFailureMessage("Step Failure in ApiSteps: " + e.getMessage());
             throw e;
        }

        }
}
