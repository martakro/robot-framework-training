*** Settings ***
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/pages/base_page.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase

*** Test Cases ***
Valid login
    Home Page Should Be Open
    Submit Login Data      ${EMAIL}     ${PASSWORD}
    Welcome Page Should Be Open
