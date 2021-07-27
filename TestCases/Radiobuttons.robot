*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radiobuttons and Checkboxes
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed  1seconds

    #Select Radiobuttons    --->  Select Radio Button  name   Value --->  (name and value  - Parameters)
    Select Radio Button  sex  Female
    Select Radio Button  exp    5

    #Select Checkboxe       --->  Select Checkbox  name/Id  --->  (name/id  - Parameters)
    Select Checkbox  tea1    #  where tea1 --> Id
    Select Checkbox  RedTea  #  Where Redtea --> name

    #Unselect Checkbox       --->  Ubselect Checkbox  name/Id  --->  (name/id  - Parameters)
    Unselect Checkbox  tea1    #  where tea1 --> Id

    Close Browser

*** Keywords ***
