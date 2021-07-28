*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
iFrametest
    Open Browser    https://demo.nopcommerce.com/   chrome
    Maximize Browser Window


    #Select Frame  id/name/css/xPath
    #Click Link  css:.example1
    #Unselect Frame


    #Select Frame  id/name/css/xPath
    #Click Link  css:.example2
    #Unselect Frame


    Close Browser


