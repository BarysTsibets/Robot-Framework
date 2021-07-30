*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/RegLocators.py

*** Keywords ***
Select Male Gender
    Select Radio Button  ${r_btn_gender_male}

Enter First Name
    [Arguments]  ${first name var}
    Input Text  ${txt_firstName}    ${first name var}

Enter Last Name
    [Arguments]  ${last name var}
    Input Text  ${txt_firstName}    ${last name var}

