*** Settings ***
Resource    ../resources/keywords/login_keywords.robot
Library     SeleniumLibrary

*** Test Cases ***
Login Valid User
    Open Login Page
    Login With Credentials    Admin    admin123
    Capture Page Screenshot
