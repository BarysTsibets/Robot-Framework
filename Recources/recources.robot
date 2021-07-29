*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
LaunchBrowser
    [Arguments]  ${appurl}  ${appbrowser}               #Arguments for LaunchBrowser Keyword
    Open Browser  ${appurl}    ${appbrowser}
    Maximize Browser Window

    ${title}    Get Title                               #Put Title of the page in *** Variables ***
    [Return]  ${title}                                  #LaunchBrowser keyword will return variable - ${title}
