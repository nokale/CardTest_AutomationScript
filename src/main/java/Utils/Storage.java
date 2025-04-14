package Utils;

import java.util.HashMap;
import java.util.Map;

public class Storage {
    private static HashMap<String, String> scenarioStatus;

    public static Map<String, String> getScenarioStatuses() {
        return scenarioStatus;
    }

    public void setScenarioStatuses(HashMap<String, String> scenarioStatuses) {
        this.scenarioStatus = scenarioStatuses;
    }
}
;