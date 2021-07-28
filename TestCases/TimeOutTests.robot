*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegTest
    Open Browser  ${url}    ${browser}
    Maximize Browser Window


    ${time}     Get Selenium Timeout                        # Get Selenium TimeOuttime
    Log To Console  ${time}

    Wait Until Page Contains     Your Personal Details      #Wait Until Page Contains ---Default timeOut 5 Seconds

    Set Selenium Timeout  7                                 #Set Selenium Timeout


    Select Radio Button     Gender  M
    Input Text  id:FirstName    John
    Input Text  id:LastName     Florece
    Input Text  id:Email    JohnFlorece@gmail.com
    Input Text  id:Password     123Test
    Input Text  id:ConfirmPassword  123Test

    Close Browser
*** Keywords ***