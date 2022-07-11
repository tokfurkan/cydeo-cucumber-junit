package com.cydeo.step_definitions;

/*
In this class we will be able to pass pre & post conditions to each scenario and each step
 */

import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.Driver;
import io.cucumber.java.*;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {

    //import from io.cucumber not from junit
    @Before (order = 0)
    public void setupScenario(){
        System.out.println("===Setting up browser using cucumber @Before===");
    }

    @Before (value = "@Login", order = 1)
    public void setupScenarioForLogins(){
        System.out.println("===This will only apply to scenarios with @Login tag===");
    }

    @Before (value = "@Login", order = -1)
    public void setupForDatabaseScenarios(){
        System.out.println("===This will only apply to scenarios with @DB tag===");
    }

    @After
    public void tearDownScenario(Scenario scenario){

        //if scenario fails this method will return true boolean value
        if (scenario.isFailed()){
            byte[] screenshot = ((TakesScreenshot)Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", scenario.getName());
        }

        BrowserUtils.sleep(5);
        Driver.closeDriver();

        //System.out.println("===Closing browser using cucumber @After===");
        //System.out.println("===Scenario ended / Take screenshot if failed!===");
    }

    @BeforeStep
    public void setupStep(){
        System.out.println("----------Applying setup using @BeforeStep----------");
    }

    @AfterStep
    public void afterStep(){
        System.out.println("----------Applying tearDown using @AfterStep----------");
    }


}
