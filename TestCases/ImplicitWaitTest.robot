*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegTest
    Open Browser  ${url}    ${browser}
    Maximize Browser Window

    Select Radio Button     Gender  M
    Input Text  id:FirstName    John
    Input Text  id:LastName     Florece
    Input Text  id:Email    JohnFlorece@gmail.com
    Input Text  id:Password     123Test
    Input Text  id:ConfirmPassword  123Test

    Close Browser
*** Keywords ***