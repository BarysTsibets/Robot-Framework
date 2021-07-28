*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser  http://demowebshop.tricentis.com/register     chrome
    Maximize Browser Window

    Open Browser    http://www.practiceselenium.com/practice-form.html  chrome

    Close Browser

    Close All Browsers