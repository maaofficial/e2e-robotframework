*** Settings ***
Resource            ../Keywords/login_step.robot
Resource            ../Resources.robot

Test Setup          Open Web Saucedemo
Test Teardown       Close Browser


*** Test Cases ***
Case 1 : Login to Website Saucedemo
    Given User In Homepage Saucedemo
    And User Input Username
    And User Input Password
    And User Click Login
    Then User Redirected to Dashboard Page