*** Settings ***
Documentation     This is some basic info about the whole suite
Library           Selenium2Library    # Copy/paste the line below into Terminal to execute: | # pybot -d results tests/amazon.robot

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Open Browser    https://www.jabil.com/
    Wait Until Page Contains    Solutions
    Input Text    css=.form-control    solutions
    Click Button    css=.btn
    Wait Until Page Contains    Search Results
    Wait Until Page Contains    Records
    Click Link    css=.visible-link-url>a
    Page Should Contain Element    css=.container-fluid.pagehero.solutionspechero>h1>div
    Element Text Should Be    css=.container-fluid.pagehero.solutionspechero>h1>div    Records
#    Close Browser

*** Keywords ***
