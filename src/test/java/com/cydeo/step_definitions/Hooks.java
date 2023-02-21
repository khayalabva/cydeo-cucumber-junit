package com.cydeo.step_definitions;

/*
In the class we will be able to pass pre- & post- conditions to
 each scenario and each step
 */

import com.cydeo.utilities.Driver;
import io.cucumber.java.*;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {
    //import from io.cucumber.java not from junit
   @Before (order = 0)
   public void setupScenario(){
   //     System.out.println("====Setting up browser using cucumber @Before====");
    }

    @Before (value = "@login", order = 1)
    public void setupScenarioForLogins(){
    //    System.out.println("====Setting up browser using cucumber @Before====");
    }

    @Before (value = "@db", order = 0)
    public void setupForDatabaseScenarios(){
      //  System.out.println("====this will only apply to scenarios with @db tag");
    }

   @After
   public void teardownScenario(Scenario scenario){
       if (scenario.isFailed()) {

           byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
           scenario.attach(screenshot, "image/png", scenario.getName() );
   }
       Driver.closeDriver();

  }

   @BeforeStep
    public void setupStep(){

    }

    @AfterStep
   public void afterStep(){

    }


}
