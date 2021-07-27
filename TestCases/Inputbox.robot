*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Title Should Be  nopCommerce demo store
    Click Link  css:.ico-login

    ${"email_txt_box"}  set variable    css:.email  #Put Email inputtext box in variable

    Element Should Be Visible  ${"email_txt_box"}   #text box visible?
    Element Should Be Enabled  ${"email_txt_box"}   #textbox enabled?

    Input Text  ${"email_txt_box"}  testemail@gmail.com
    Sleep  3
    Clear Element Text  ${"email_txt_box"}
    Sleep  3

    Close Browser

*** Keywords ***
