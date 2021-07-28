*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MultiplyBrowsersTest
    Open Browser  https://google.com/     chrome
    Maximize Browser Window

    Open Browser  https://bing.com/   chrome
    Maximize Browser Window

    Switch Browser  1


    ${title}    Get Title
    Log To Console  ${title}

    Close All Browsers




