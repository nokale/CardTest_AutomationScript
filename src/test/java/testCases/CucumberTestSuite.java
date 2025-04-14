package testCases;


import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberSerenityRunner;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;
import org.junit.runner.RunWith;

import static io.cucumber.junit.platform.engine.Constants.EXECUTION_MODE_FEATURE_PROPERTY_NAME;
import static io.cucumber.junit.platform.engine.Constants.PLUGIN_PROPERTY_NAME;

@Suite
//@IncludeEngines("cucumber")
@SelectClasspathResource("/features")
@RunWith(CucumberSerenityRunner.class)
@CucumberOptions(
        plugin = {"pretty"},
        glue = "testCases.stepdefinitions",
        features="src/test/resources/features",
        monochrome = true
)
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "pretty")
public class CucumberTestSuite {

}
