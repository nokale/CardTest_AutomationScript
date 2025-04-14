package testCases;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Utils.FailureStorage;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.junit.Rule;

import Utils.JiraTicketonFailure;
import Utils.Storage;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class ScenarioStatusStore {
    @Rule
    public JiraTicketonFailure jireTicketonFailure = new JiraTicketonFailure();
    Storage storage=new Storage();
    private static Workbook workbook;
    private Sheet sheet;
    private List<Map<String, String>> stepDetails;
    private static Map<String, String> scenarioStatuses = new HashMap<String, String>();
       @Before
    public void beforeScenario(Scenario scenario) {
        System.out.println("########################################################################################################");
        System.out.println("Executing Before Scenario: "+scenario.getName());
           }
    @After
    public void afterScenario(Scenario scenario) throws IOException {
        System.out.println("Executing After Scenario");
        // After scenario hook
        String scenarioName = scenario.getName();
        String status = scenario.getStatus().toString();
        
        String runPlanPath = System.getProperty("cucumber.features");
        String runPlanId = "Default";
        if (runPlanPath != null) {
        	 runPlanId = extractFeatureId(runPlanPath);
        }

        System.out.println("runPlanId: " + runPlanId);
        System.out.println("scenarioName: " + scenarioName + " Status: " + status);
        // Map Cucumber scenario status to custom status (e.g., Passed, Failed)
     /*   if (status.equalsIgnoreCase("PASSED")) {
            scenarioStatuses.put(scenarioName, "Passed");
        } else {
            scenarioStatuses.put(scenarioName, "Failed");
        }*/
       // storage.setScenarioStatuses(scenarioStatuses);
        System.out.println("########################################################################################################");
        String failureMessages = FailureStorage.getAllFailures();
        System.out.println("Failure Messages: " + failureMessages);

        if(status.equalsIgnoreCase("FAILED"))
      {
          String str= jireTicketonFailure.createTicket(scenarioName,scenario.getStatus().toString(), runPlanId,failureMessages);
          System.out.println("Jira issue ID:"+str);
      }

           }


    
    public static String extractFeatureId(String filePath) {
        // Get the file name from the path
        String fileName = Paths.get(filePath).getFileName().toString();
        
        // Remove the file extension to get the ID
        if (fileName.endsWith(".feature")) {
            return fileName.substring(0, fileName.length() - ".feature".length());
        } else {
            // Handle cases where the file extension might be different or missing
            return fileName;
        }
    }

   /* @AfterClass
    public static void afterClass()
    {
        System.out.println("-----------------------After CLASS-------------------------------------");
    }*/
    /* private void handleTestRunStarted(TestRunStarted event) {
        workbook = new XSSFWorkbook();
        sheet = workbook.createSheet("Step Execution Details");
        stepDetails = new ArrayList<Map<String, String>>();
    }
   public static void writeScenarioStatusesToExcel(Map<String, String> scenarioStatuses, String filePath) throws IOException {
        workbook=new XSSFWorkbook();
        File file = new File(filePath);
        Sheet sheet = workbook.createSheet("scenariostatus");
        int rowNum = 1;
        Row headerRow = sheet.createRow(0);
        headerRow.createCell(0).setCellValue("Test Case");
        headerRow.createCell(1).setCellValue("Status");
        for (Map.Entry<String, String> entry : scenarioStatuses.entrySet()) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(entry.getKey());
            row.createCell(1).setCellValue(entry.getValue());
        }
        // Write workbook to file
        try (FileOutputStream outputStream = new FileOutputStream(filePath)) {
            workbook.write(outputStream);
        }
    }*/
}