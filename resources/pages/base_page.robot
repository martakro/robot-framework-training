*** Settings ***
Library    SeleniumLibrary
Resource   ../../config/app_variables.robot

*** Variables ***
${HomePageTitle}     Contact List App

*** Keywords ***
Start TestCase
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Finish TestCase
    Close Browser

Home Page Should Be Open
    Title Should Be     ${HomePageTitle}

Error Message Should Contain
    [Arguments]     ${errorNotification}
    Wait Until Element Contains      ${error}    ${errorNotification}