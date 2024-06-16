*** Settings ***
Resource    ../../Resources/login.robot
Resource    ../../Resources/common.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase

*** Variables ***
${DATA1}        email               123
${DATA2}        email@ok.kl         123


*** Test Cases ***
Login With Invalid Email
    Login Page Should Be Open
    Provide Invalid Login Data  ${DATA1}[0]     ${DATA1}[1]
    Submit Credentials
    Error Message Should Contain    Incorrect username or password

Login With Valid Email And Invalid Password
    Login Page Should Be Open
    Provide Invalid Login Data  ${DATA2}[0]     ${DATA2}[1]
    Submit Credentials
    Error Message Should Contain    Incorrect username or password

