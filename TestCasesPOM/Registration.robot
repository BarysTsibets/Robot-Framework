*** Settings ***
Library  SeleniumLibrary
Library     FakerLibrary
Variables  ../PageObjects/RegLocators.py
Resource  ../Recources/RegKeywords.robot



Test Setup  Open Browser  ${reg_url}    ${browser}
#Test Teardown  Close All Browsers



*** Variables ***
${reg_url}  https://demo.nopcommerce.com/register?returnUrl=%2F
${browser}  chrome
${f_name}   Donald
${l_name}  Obama
${day}  15
${month}    April                   #drop down by label
${year}     2000                     #drop down by label

#${f_email}=  FakerLibrary.Email
${f_email}  fakerLibrary100@gmail.com

${pwd}      Test123!
${conf_pwd}     Test123!
${success_title}    nopCommerce demo store. Register



*** Test Cases ***
Registration New User Test

    Select Male Gender
    Enter First Name    ${f_name}
    Enter Last Name     ${l_name}
    Select DOB Day      ${day}
    Select DOB Month    ${month}
    Select DOB Year     ${year}
    #Log To Console      ${f_email}
    Enter Email         ${f_email}
    Enter Password      ${pwd}
    Enter Confirmation Password     ${conf_pwd}
    Click Button  ${btn_register}
    Title Should Be  ${success_title}










