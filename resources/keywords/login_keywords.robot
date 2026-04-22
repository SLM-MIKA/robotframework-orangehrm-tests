*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/login_locators.robot
Resource   ../config/config.robot

*** Keywords ***
Open OrangeHRM Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${URL}    chrome    options=${options}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_INPUT}    10s
    Input Text    ${USERNAME_INPUT}    ${username}
    Input Text    ${PASSWORD_INPUT}    ${password}
    Click Button   ${LOGIN_BUTTON}
