*** Settings ***
Resource    ../../Resources/login.robot
Resource    ../../Resources/common.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase

*** Test Cases ***
Valid login
    Login Page Should Be Open
    Type In Email    test_name@test.com
    Type In Password    password123!
    Submit Credentials
    Welcome Page Should Be Open
