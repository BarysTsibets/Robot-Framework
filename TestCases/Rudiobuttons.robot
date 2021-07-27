*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radiobuttons and Checkboxes
    Open Browser  ${url}    ${browser}
    Maximize Browser Window