package Utils;

import java.util.ArrayList;
import java.util.List;

public class FailureStorage {

    private static List<String> failureMessages = new ArrayList<>();

    // Add failure message
    public static void addFailureMessage(String message) {
        failureMessages.add(message);
    }

    // Retrieve all failure messages as a single formatted string
    public static String getAllFailures() {
        if (failureMessages.isEmpty()) {
            return "No failures captured.";
        }
        return String.join("\n", failureMessages);
    }

    // Clear failures after each scenario
    public static void clearFailures() {
        failureMessages.clear();
    }
}
