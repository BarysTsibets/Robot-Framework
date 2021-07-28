*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegTest
    Open Browser  ${url}    ${browser}
    Maximize Browser Window


    ${implicitwait}     Get Selenium Implicit Wait      #Get Selenium Implicit Wait
    Log To Console  ${implicitwait}

    Set Selenium Implicit Wait  3 seconds               #Set Selenium Implicit Wait

    ${implicitwait}     Get Selenium Implicit Wait      #Get Selenium Implicit Wait
    Log To Console  ${implicitwait}


    Select Radio Button     Gender  M
    Input Text  id:FirstName    John
    Input Text  id:LastName     Florece
    Input Text  id:Email    JohnFlorece@gmail.com
    Input Text  id:Password     123Test
    Input Text  id:ConfirmPassword  123Test

    Close Browser
*** Keywords ***