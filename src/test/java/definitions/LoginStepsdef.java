package definitions;

import cucumber.api.java.en.Given;

import static support.TestContext.getDriver;

public class LoginStepsdef {
    @Given("User opens the website")
    public void userOpensTheWebsite() throws InterruptedException {
        getDriver().get("https://nop-qa.portnov.com/");
        Thread.sleep(1000);

    }


}
