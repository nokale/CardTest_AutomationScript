package Utils;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Properties;
import java.util.logging.Logger;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.rules.TestWatcher;

import io.restassured.RestAssured;
import io.restassured.response.Response;

import javax.print.attribute.standard.JobStateReasons;

public class JiraTicketonFailure extends TestWatcher {

    private static Properties properties;
    private static final Logger logger = Logger.getLogger(JiraTicketonFailure.class.getName());

    static {
        try {
            FileInputStream fileInput = new FileInputStream("src/main/resources/application.properties");
            properties = new Properties();
            properties.load(fileInput);
            fileInput.close();
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to load config.properties file.");
        }
    }


    public String createTicket(String scenarioName, String errorMessage, String runPlanId, String failureMessages) throws IOException {
        String apiUrl = properties.getProperty("jiraBaseUrl") + "/rest/api/3/issue/";
        String jiraToken="ATATT3xFfGF07s67w8aZoyYxsQjFw0zGrwZdHiOzLXnHb9nRS_oS4Yfh6jHL4D6rtsjB4O4akv3VvqmHsG75Pwyemr48Z93NdNuiiOz4o72qSXO_8257VjY-kqTxfa3uoYDqG85N2TMt6cX5pSAEIfA0tx6OlRarpSAhqi4IyTLGf-Tf7F0dB2A=CA4D4A38";
        JSONObject json = new JSONObject();
        JSONObject descriptionText = new JSONObject()
                .put("type", "text")
                .put("text", "Run Plan: " + runPlanId + "\nFailure Details:\n" + failureMessages);

        JSONArray contentArray = new JSONArray()
                .put(new JSONObject()
                        .put("type", "paragraph")
                        .put("content", new JSONArray().put(descriptionText)));

        JSONObject description = new JSONObject()
                .put("type", "doc")
                .put("version", 1)
                .put("content", contentArray);

        JSONObject fields = new JSONObject()
                .put("project", new JSONObject().put("key", properties.getProperty("jiraProjectKey")))
                .put("summary", "Failed Scenario: " + scenarioName)
                .put("description", description)
                .put("issuetype", new JSONObject().put("name", "Bug"));
        json.put("fields", fields);

        StringBuilder responseStringBuilder = new StringBuilder();
        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
            HttpPost request = new HttpPost(apiUrl);
            request.setHeader("Content-Type", "application/json");
            String auth = properties.getProperty("jiraUsername") + ":" +jiraToken;
            byte[] encodedAuth = Base64.getEncoder().encode(auth.getBytes(StandardCharsets.UTF_8));
            String authHeader = "Basic " + new String(encodedAuth, StandardCharsets.UTF_8);
            request.setHeader("Authorization", authHeader);

            StringEntity entity = new StringEntity(json.toString());
            request.setEntity(entity);

            try (CloseableHttpResponse response = httpClient.execute(request)) {
                if (response.getStatusLine().getStatusCode() != 201) {
                    throw new RuntimeException("Failed to create JIRA ticket: " + response.getStatusLine());
                }
                HttpEntity entity1 = response.getEntity();
                try (BufferedReader reader = new BufferedReader(new InputStreamReader(entity1.getContent(), StandardCharsets.UTF_8))) {

                    String line;
                    while ((line = reader.readLine()) != null) {
                        responseStringBuilder.append(line);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        JSONObject responseJson = new JSONObject(responseStringBuilder.toString());
        logger.info("Jira issue has been created " + responseJson.getString("key"));
        return responseJson.getString("key");
    }
}
