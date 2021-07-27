*** Settings ***
Documentation  Example of my first test case
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    #create webdriver    chrome  executable_path="C:\Users\BorisPC\Desktop\robot\chromedriver_win32"
    Open Browser    https://demo.nopcommerce.com/   chrome
    Click Link      css:.ico-login
    Input Text      id:Email Barys
    Input Text      id:Password anyData
    Click Button    css:.button-1.login-button
    Close Browser
*** Keywords ***
