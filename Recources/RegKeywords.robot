*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/RegLocators.py

*** Keywords ***
Select Male Gender
    Select Radio Button  ${r_btn_gender_male}   ${m_gender_value}

Enter First Name
    [Arguments]  ${first name var}
    Input Text  ${txt_firstName}    ${first name var}

Enter Last Name
    [Arguments]  ${last name var}
    Input Text  ${txt_lastname}    ${last name var}

Select DOB Day
    [Arguments]  ${day_label}
    Select From List By Label  ${dropdown_day}  ${day_label}

Select DOB Month
    [Arguments]  ${month_label}
    Select From List By Label  ${dropdown_month}  ${month_label}

Select DOB Year
    [Arguments]  ${month_label}
    Select From List By Label  ${dropdown_year}  ${month_label}

Enter Email
    [Arguments]  ${email var}
    Input Text  ${txt_email}    ${email var}

Enter password
    [Arguments]  ${password var}
    Input Text  ${txt_password}    ${password var}

Enter confirmation password
    [Arguments]  ${conf password var}
    Input Text  ${txt_confirm_password}    ${conf password var}