*** Settings ***
Documentation    Test cases related to login functionality
Library          SeleniumLibrary
# Resource         ../../keywords/shared/login_keywords.robot

*** Test Cases ***
# Valid Login Test
#     [Documentation]    Test valid login credentials
#     Login    https://example.com/login    username    password
#     # Additional test steps...

*** Variables ***
${URL}            https://practicetestautomation.com/practice-test-login/
${USERNAME}       student
${PASSWORD}       Password123

*** Test Cases ***
Login Test
    [Documentation]    Test login with valid credentials
    Open Browser    ${URL}    Chrome
    Input Text    name:username    ${USERNAME}
    Input Text    name:password    ${PASSWORD}
    # Click Button    css:button.btn[value='Submit']
    # Click Button    /html/body/div/div/section/section/div[1]/button
    Click Element    id=submit
    # Sleep    2s    # Wait for the page to load (adjust as needed)
    Wait Until Page Contains    Logged In Successfully
    # Capture Page Screenshot    # Optional: Capture a screenshot for debugging
    Close Browser
