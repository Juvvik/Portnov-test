package definitions;

import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class WebdriveStepsDef {
    @Given("client open web page")
    public void clientOpenWebPage() throws InterruptedException {
        getDriver().navigate().to("Https://google.com");
        Thread.sleep(2000);
        WebElement searchBar = getDriver().findElement(By.xpath("//textarea[@name='q']"));
        searchBar.sendKeys("Portnov");
        searchBar.sendKeys(Keys.RETURN);
        Thread.sleep(1000);
        getDriver().navigate().back();
        Thread.sleep(1000);
        getDriver().navigate().forward();
        Thread.sleep(1000);
        getDriver().navigate().refresh();
        Thread.sleep(1000);

    }
}
