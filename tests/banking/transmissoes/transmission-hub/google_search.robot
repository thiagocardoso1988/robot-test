*** Settings ***
Documentation    Search on Google
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            http://www.google.com
${SEARCH_BOX}     name:q
${SEARCH_BUTTON}  name:btnK
${QUERY}          Robot Framework

*** Test Cases ***
Search on Google
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    10s
    Input Text    ${SEARCH_BOX}    ${QUERY}
    Click Element    ${SEARCH_BUTTON}
    Wait Until Page Contains    Robot Framework
    Capture Page Screenshot
    Close Browser
