*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle}=   LaunchBrowser   ${url}  ${browser}                  #LanchBrowser Keyword must accept parameters + put return data in ${Pagetitle} variable
    Log  ${PageTitle}                                                   #Log variable data in Html report
    Input Text  id:txtUsername  Admin
    Input Text  id:txtPassword  admin123


*** Keywords ***
LaunchBrowser
    [Arguments]  ${appurl}  ${appbrowser}               #Arguments for LaunchBrowser Keyword
    Open Browser  ${appurl}    ${appbrowser}
    Maximize Browser Window

    ${title}    Get Title                               #Put Title of the page in *** Variables ***
    [Return]  ${title}                                  #LaunchBrowser keyword will return variable - ${title}
