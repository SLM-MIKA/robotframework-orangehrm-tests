*** Settings ***
Resource    ../resources/keywords/login_keywords.robot

*** Test Cases ***
Login Valid User
    Open OrangeHRM Login Page
    Login With Credentials    Admin    admin123