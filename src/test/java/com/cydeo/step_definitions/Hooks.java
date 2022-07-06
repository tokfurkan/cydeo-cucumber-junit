package com.cydeo.step_definitions;

/*
In this class we will be able to pass pre & post conditions to each scenario and each step
 */

import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeStep;

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
    public void tearDownScenario(){
        System.out.println("===Closing browser using cucumber @After===");
        System.out.println("===Scenario ended / Take screenshot if failed!===");
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
