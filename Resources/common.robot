*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start TestCase
    Open Browser    ${Login-Url}    ${Browser}
    Maximize Browser Window

 Finish TestCase
    Close Browser