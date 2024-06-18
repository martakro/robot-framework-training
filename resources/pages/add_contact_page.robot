*** Settings ***
Library     SeleniumLibrary
Resource    ../locators/add_contact_locators.robot
Variables   ../variables/contact_generator.py


*** Variables ***
${add_contact_btn_txt}    Add a New Contact

*** Keywords ***
Click Add New Contact Button
    Wait Until Element Contains    ${add_contact_btn}    ${add_contact_btn_txt}
    Click Button    ${add_contact_btn}

Input Obligatory Data
    Input Text    ${first_name_input}    ${generate_contact_with_obligatory_data()["first_name"]}
    Input Text    ${last_name_input}     ${generate_contact_with_obligatory_data()["last_name"]}