*** Settings ***
Resource    ../../resources/pages/base_page.robot
Resource    ../../resources/pages/add_contact_page.robot

Test Setup     Start TestCase And Log In
Test Teardown  Finish TestCase


*** Test Cases ***
Add Contact With Obligatory Fields
    Click Add New Contact Button
    Input Obligatory Data
    Click Submit Button
    
    
