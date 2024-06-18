*** Settings ***
Library     SeleniumLibrary
Resource    ../../config/app_variables.robot
Resource    login_page.robot
Resource    ../locators/base_locators.robot

*** Variables ***
${HomePageTitle}     Contact List App

*** Keywords ***
Start TestCase
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Start TestCase And Log In
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Submit Login Data      ${EMAIL}     ${PASSWORD}


Finish TestCase
    Close Browser

Home Page Should Be Open
    Title Should Be     ${HomePageTitle}

Error Message Should Contain
    [Arguments]     ${error_notification}
    Wait Until Element Contains      ${error}    ${error_notification}

Click Submit Button
    Click Button    ${submit_button}