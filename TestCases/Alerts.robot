*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    Open Browser  http://testautomationpractice.blogspot.com/   chrome
    Maximize Browser Window
    Click Button  css:[onclick="myFunction()"]

    Handle Alert  accept                            #Ok
    Click Button  css:[onclick="myFunction()"]

    Handle Alert  dismiss                           #cancel
    Click Button  css:[onclick="myFunction()"]

    Handle Alert  leave                             #leave alert opened

    Alert Should Be Present  Press a button!        #Verify text in alert + close alert

    Close All Browsers