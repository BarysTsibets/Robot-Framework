*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
LoginTest
    #create webdriver    chrome  executable_path="C:\Users\BorisPC\Desktop\robot\chromedriver_win32"
    Open Browser    ${url}   ${browser}}
    Click Link      css:.ico-login
    Input Text      id:Email    Barys
    Input Text      id:Password     anyData
    Click Button    css:.button-1.login-button
    Close Browser

*** Keywords ***
