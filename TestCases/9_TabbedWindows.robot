*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowTest
    Open Browser  http://demo.automationtesting.in/Windows.html     chrome
    Maximize Browser Window

    Click Button    css:button.btn.btn-info

    Sleep   2
    Switch Window   SeleniumHQ Browser Automation           #Switch Window  title/URL

    Sleep   2
    Switch Window  Frames & windows

    Close All Browsers