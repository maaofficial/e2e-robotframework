*** Settings ***
Library                 SeleniumLibrary
Resource                ../PageObject/pageLogin.robot
Resource                ../TestData/Secret.robot

*** Keywords ***
User In Homepage Saucedemo
    Wait Until Page Contains Element    ${FIELD_INPUT_USERNAME}        10s

User Input Username
    Wait Until Element Is Visible    ${FIELD_INPUT_USERNAME}        10s
    Input Text                       ${FIELD_INPUT_USERNAME}    ${USERNAME}

User Input Password
    Wait Until Element Is Visible    ${FIELD_INPUT_PASSWORD}        10s
    Input Password                   ${FIELD_INPUT_PASSWORD}    ${PASSWORD}

User Click Login
    Wait Until Element Is Visible    ${BUTTON_LOGIN}            10s
    Click Button                     ${BUTTON_LOGIN}

User Redirected to Dashboard Page
    Wait Until Page Contains Element    ${DASHBOARD_PAGE}        10s