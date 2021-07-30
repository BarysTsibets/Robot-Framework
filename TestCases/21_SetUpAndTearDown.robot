*** Settings ***
Library     SeleniumLibrary
Suite Setup  Log To Console     OpeningBrowser                      #Can be any Keywords
Suite Teardown  Log To Console      ClosingBrowser

Test Setup  Log To Console      LogIn To The App
Test Teardown  Log To Console       LogOut from the App


*** Test Cases ***
TC1
    Log To Console  First test case
TC2
    Log To Console  Second test case
TC3
    Log To Console  Third test case

