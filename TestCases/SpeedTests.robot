*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegTest
    Open Browser  ${url}    ${browser}
    Maximize Browser Window

    ${spead}=   Get Selenium Speed                      #Get Selenium Speed
    Log To Console  ${spead}

    Select Radio Button     Gender  M

    Sleep  1 seconds                                    #Sleep

    Input Text  id:FirstName    John
    Input Text  id:LastName     Florece
    Input Text  id:Email    JohnFlorece@gmail.com

    Set Selenium Speed  2 seconds                       #Set Selenium Speed

    ${spead}=   Get Selenium Speed

    Input Text  id:Password     123Test
    Input Text  id:ConfirmPassword  123Test

    Close Browser
*** Keywords ***
