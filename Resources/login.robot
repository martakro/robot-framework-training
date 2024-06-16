*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login-Url}    https://thinking-tester-contact-list.herokuapp.com
${Browser}      Chrome
${WelcomePageTitle}     Contact List

*** Keywords ***
Login Page Should Be Open
    Title Should Be     Contact List App

Type In Email
    [Arguments]     ${email}
    Input Text      id=email    ${email}

Type In Password
    [Arguments]     ${password}
    Input Text      id=password     ${password}

Provide Invalid Login Data
    [Arguments]     ${email}     ${password}
    Input Text      id=email    ${email}
    Input Text      id=password     ${password}

Submit Credentials
    Click Button    id=submit

Welcome Page Should Be Open
    Wait Until Element Contains     //h1        ${WelcomePageTitle}

Error Message Should Contain
    [Arguments]     ${errorNotification}
    Wait Until Element Contains      id=error    ${errorNotification}
