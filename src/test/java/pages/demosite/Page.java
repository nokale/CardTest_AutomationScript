package pages.demosite;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import net.serenitybdd.core.pages.PageObject;
import net.thucydides.core.webdriver.ThucydidesWebDriverSupport;

public class Page extends PageObject {

	private WebDriver driver;
	private WebDriverWait wait;

	public String url = "https://www.saucedemo.com/v1/index.html";

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void openPage(String url) {
		driver = ThucydidesWebDriverSupport.getDriver();
		wait = new WebDriverWait(driver, Duration.ofSeconds(10));
		driver.get(url);
	}

	public void get(String elementType, String elementKey) {
		WebElement getOperation = decideElementTypeForWebElement(elementType, elementKey);
		$(getOperation).getText();
	}

	public void click(String elementType, String elementKey) {
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		WebElement clickOperation = decideElementTypeForWebElement(elementType, elementKey);
		clickOperation.click();
		//WebElement executeButton= driver.findElement(By.xpath("//button[text()='Execute']"));
		//JavascriptExecutor js = (JavascriptExecutor) driver;
		//js.executeScript("arguments[0].click();", executeButton);
		//executeButton.click();
//		WebElement searchButton = wait.until(ExpectedConditions.elementToBeClickable(By.name(buttonName)));
//		searchButton.click();
	}

	public WebElement decideElementTypeForWebElement(String elementType, String elementKey) {
		if (elementType.equalsIgnoreCase("xpath")) {
			return findByXpath(elementKey);
		} else if (elementType.equalsIgnoreCase("id")) {
			return findByElementId(elementKey);
		} else if (elementType.equalsIgnoreCase("name")) {
			return findByElementName(elementKey);
		}
		return null;
	}

	public WebElement findByXpath(String elementKey) {
		return getDriver().findElement(By.xpath(elementKey));
	}

	public WebElement findByElementId(String elementKey) {
		return getDriver().findElement(By.id(elementKey));
	}

	public WebElement findByElementName(String elementKey) {
//		return getDriver().findElement(By.name(elementKey));
		return wait.until(ExpectedConditions.visibilityOfElementLocated(By.name(elementKey)));
	}

	public void view(String data) {
		wait.until(ExpectedConditions.titleContains(data));
	}

	public void update(String value, String elementType, String elementKey) {
		WebElement updateOperation = decideElementTypeForWebElement(elementType, elementKey);
		updateOperation.sendKeys(value);
	}

}
