*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
NavigationTest
    Open Browser    http://google.com/    chrome
    Set Selenium Speed  1

    ${loc}  Get Location                    #Get Location
    Log To Console  ${loc}

    Go To  http://bing.com/                 #Go To  URL
    ${loc}  Get Location
    Log To Console  ${loc}

    Go Back                                 #Go Back
    ${loc}  Get Location
    Log To Console  ${loc}

    Close All Browsers


