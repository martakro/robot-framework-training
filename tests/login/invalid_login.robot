*** Settings ***
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/pages/base_page.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase

*** Variables ***
&{invalid_login_data}      email=email      password=123
${invalid_password}        123


*** Test Cases ***
Login With Invalid Email
    Home Page Should Be Open
    Submit Login Data  ${invalid_login_data.email}     ${invalid_login_data.password}
    Error Message Should Contain    Incorrect username or password

Login With Valid Email And Invalid Password
    Home Page Should Be Open
    Submit Login Data  ${EMAIL}     ${invalid_password}
    Error Message Should Contain    Incorrect username or password

