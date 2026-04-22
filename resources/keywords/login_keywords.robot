*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/login_locators.robot
Resource   ../config/config.robot

*** Keywords ***
Open OrangeHRM Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_INPUT}    10s
    Input Text    ${USERNAME_INPUT}    ${username}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Click Button   ${LOGIN_BUTTON}