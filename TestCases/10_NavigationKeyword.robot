*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationTest
    Open Browser    http://google.com/    chrome

    ${loc}  Get Location
    Log To Console  ${loc}

