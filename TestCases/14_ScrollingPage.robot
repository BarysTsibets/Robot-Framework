*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    http://testautomationpractice.blogspot.com/     chrome
    Maximize Browser Window

    Execute Javascript  window.scrollTo(0,900)             #Scrool to pixel 0-Horizontaal  900 - Vertical

    Sleep  1

    Scroll Element Into View        css:[id="age"]                #Scroll to the Element   css: / xpath:

    Sleep   1

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)           #scrool to the bottom

    sleep 1

    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)           #scrool to the top

    Close All Browsers

