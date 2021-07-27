*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser  ${url}    ${browser}
    Maximize Browser Window

*** Keywords ***
