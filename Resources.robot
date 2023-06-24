*** Settings ***
Library            SeleniumLibrary
Resource           TestData/Secret.robot


*** Variables ***
${BROWSER}                     Chrome


*** Keywords ***
Open Web Saucedemo
    Open Browser        ${BASE_URL}            ${BROWSER}
    Set Selenium Speed    1s
    Maximize Browser Window