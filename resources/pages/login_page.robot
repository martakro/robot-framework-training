*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/login_locators.robot
Resource   ../locators/base_locators.robot
Resource   ../pages/base_page.robot

*** Variables ***
${WelcomePageTitle}     Contact List

*** Keywords ***
Submit Login Data
    [Arguments]     ${email}    ${password}
    Input Text      ${email_input}        ${email}
    Input Text      ${password_input}     ${password}
    Click Submit Button

Welcome Page Should Be Open
    Wait Until Element Contains     ${header}       ${WelcomePageTitle}
