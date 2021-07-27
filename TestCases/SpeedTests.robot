*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegTest
    Open Browser  ${url} ${browser}
    Maximize Browser Window


*** Keywords ***
