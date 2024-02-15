*** Settings ***
Documentation    Keywords related to login functionality
Library          SeleniumLibrary

*** Keywords ***
Open Login Page
    [Arguments]    ${url}
    Open Browser    ${url}    Chrome

Input Username
    [Arguments]    ${username}
    Input Text    username_field_locator    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field_locator    ${password}

Click Login Button
    Click Button    login_button_locator

Login
    [Arguments]    ${url}    ${username}    ${password}
    Open Login Page    ${url}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
