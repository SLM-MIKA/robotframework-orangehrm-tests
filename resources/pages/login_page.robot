*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/login_locators.robot

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@placeholder='Username']    20s
    Wait Until Element Is Visible       xpath=//input[@placeholder='Username']    20s

Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_INPUT}    10s
    Input Text    ${USERNAME_INPUT}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_INPUT}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}
