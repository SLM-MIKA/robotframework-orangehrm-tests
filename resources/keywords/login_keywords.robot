*** Settings ***
Resource    ../pages/login_page.robot

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login
