*** Settings ***
Library    SeleniumLibrary
Resource

*** Variables ***
${Login-Url}    https://thinking-tester-contact-list.herokuapp.com
${Browser}      Chrome

*** Test Cases ***
Valid login
    Open Browser to Login Page
    Type In Email    test_name@test.com
    Type In Password    password123!
    Submit Credentials
    Sleep   3s
    Welcome Page Should Be Open
    [Teardown]  Close Browser

*** Keywords ***
Open Browser to Login Page
    Open Browser    ${Login-Url}    ${Browser}
    Title Should Be     Contact List App

Type In Email
    [Arguments]     ${email}
    Input Text      id=email    ${email}

Type In Password
    [Arguments]     ${password}
    Input Text      id=password     ${password}

Submit Credentials
    Click Button    id=submit

Welcome Page Should Be Open
    Title Should Be     My Contacts
