package pages.demosite;

import net.serenitybdd.annotations.DefaultUrl;
import net.serenitybdd.core.pages.PageObject;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import testCases.stepdefinitions.DemoSiteTest;

import java.util.Set;

@DefaultUrl("https://www.saucedemo.com/v1/index.html")
public class DemoLoginPage extends PageObject {

    @FindBy(xpath = "//div[@class='col-md-9 ucase']")
    private WebElement embossername;
    @FindBy(id = "user-name")
    private WebElement username;
    //By username = By.id("user-name");
    //By password= By.id("password");
    @FindBy(id = "password")
    private WebElement password;
    @FindBy(id = "login-button")
    private WebElement login;

    @FindBy(xpath = "//div[@class=\"inventory_details_price\"]")
    private WebElement priceElement;
   private static String productName = "//div[@class=\"inventory_item_name\" and text()='%s']";
    private static final Logger logger = LoggerFactory.getLogger(DemoLoginPage.class);

    public static final String DEFAULT_URL = "https://www.saucedemo.com/v1/index.html";
    public static String getDefaultUrl() {
        return DEFAULT_URL;
    }

    public void setuser (String Username) {
        getDriver().manage().window().maximize();
        $(username).type(Username);
    }
    public void setpassword (String Password) {
        $(password).type(Password);
    }
    public void clickloginbtn (){
        $(login).click();
    }

    public void verifyLogin() {
               String actual = getDriver().getTitle();
        String expected = "Swag Labs";
        Assert.assertEquals(actual, expected);
        logger.info("Expected title: "+expected+" is equal to the Actual title: "+actual+". Successfully logged in to the Application");
         }


    public void cardSearch()  {
        String xpathExpression = "//a[text()='Card Search']";
        String currentWindow = getDriver().getWindowHandle();
        Set<String> allWindows = getDriver().getWindowHandles();
        for(String window : allWindows)
        {
            if(!window.contentEquals(currentWindow)) {
                getDriver().switchTo().window(window);
                break;
            } }
        $(By.xpath(xpathExpression)).click();

    }

  public void selectProduct(String product)
  {
      System.out.println($(String.format(productName,product)).getText());
    $(String.format(productName, product)).click();
  }

  public String getProductPrice()
  {
   return $(priceElement).getText();
  }








}
