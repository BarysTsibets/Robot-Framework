*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Variables  ../PageObjects/RegLocators.py
Resource  ../Recources/RegKeywords.robot



Test Setup  Open Browser  ${reg_url}    ${browser}
Test Teardown  Close All Browsers


*** Variables ***
${reg_url}  https://demo.nopcommerce.com/register?returnUrl=%2F
${browser}  chrome
${f_name}   Donald
${l_name}  Obama
${day}  15
${month}    April       #drop down by label
${year}     2000        #drop down by label
${email}=   FakerLibrary.email
${pwd}      Test123!
@{conf_pwd}     Test123!

*** Test Cases ***
Registration New User Test
    Select Male Gender
    Enter First Name    ${f_name}
    Enter Last Name     ${l_name}







