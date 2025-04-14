package testCases.stepdefinitions;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import Utils.PropertyFileReader;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.annotations.Steps;
import net.serenitybdd.core.steps.UIInteractions;
import net.thucydides.core.annotations.findby.By;
import pages.demosite.DemoLoginScreen;
import pages.demosite.Screen;

public class DemoSiteTest extends UIInteractions {
	private static final Logger logger = LoggerFactory.getLogger(DemoSiteTest.class);
	PropertyFileReader prop = new PropertyFileReader("src/test/resources/config.properties");
	@Steps
	DemoLoginScreen loginScreen;

	@Steps
	Screen screen;

	@Given("User is on Login Screen")
	public void userIsOnLoginScreen() {
		logger.info("User is on Login Screen");
		loginScreen.openApplication();
	}

	@When("User enters username and password and clicks on login button")
	public void userEntersAndAndClicksOnLoginButton() {
		logger.info("User enters username and password and click on login button");
		loginScreen.login(prop.getProperty("username"), prop.getProperty("password"));
	}

	@Then("User selects {} from the list")
	public void userSelectstheProduct(String product) {
		logger.info("User selects " + product + "from the list");
		loginScreen.selectProduct(product);
	}

	@And("^User verify the product price is equal to the (.*)")
	public void userVerifyTheProductPriceIsEqualToThe(String price) {
		logger.info("Verifying the product price is equal to the" + price);
		loginScreen.verifyPriceofElement(price);
	}

	/*
	 * @When("User enters  {string} and {} and clicks on login button") public void
	 * userEntersAndAndClicksOnLoginButton(String sheetname, int rownumber) throws
	 * IOException, InvalidFormatException { ExcelReader reader=new ExcelReader();
	 * String ExcelPath=
	 * "D:\\Neha\\serenity_bdd\\src\\test\\resources\\TestData\\ExcelData.xlsx";
	 * List<Map<String,String>> testdata=reader.getData(ExcelPath,sheetname); String
	 * username = testdata.get(rownumber).get("username"); String password =
	 * testdata.get(rownumber).get("password"); String product =
	 * testdata.get(rownumber).get("productName");
	 * System.out.println("User Enter username as \" " + username +
	 * " \"and Password as \" " + password + "\" ");
	 * 
	 * if (username != null || password != null)
	 * loginScreen.login(username,password); }
	 */
	@Then("User should land on home page")
	public void userShouldLandOnHomePage() {
	}

}
