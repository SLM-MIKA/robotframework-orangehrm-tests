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
    Wait Until Page Contains Element    xpath=//input[@placeholder='Username']    20s
    Wait Until Element Is Visible       xpath=//input[@placeholder='Username']    20s

    Input Text    xpath=//input[@placeholder='Username']    ${username}
    Input Text    xpath=//input[@placeholder='Password']    ${password}

    Wait Until Element Is Enabled       xpath=//button[contains(.,'Login')]    10s
    Click Button   xpath=//button[contains(.,'Login')]
