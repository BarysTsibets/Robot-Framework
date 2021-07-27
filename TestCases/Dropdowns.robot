*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed  1

    #Drop Downs
    Select From List By Label  continents   North America   # id/name   text_from_Dropdown
    Select From List By Index  continents  0               # id/name   index_of_element_from_Dropdown (0,1,2,3..)
    # Select From List By Value  nts contine  value1        # id/name   value_of_element_from_HTML

    #List Box
    Select From List By Label  selenium_commands    Browser Commands    # id/name   text_from_ListBox
    Select From List By Index  selenium_commands    2                   # id/name   index_of_element_from_ListBox (0,1,2,3..)
    Unselect From List By Label  selenium_commands    Browser Commands  # id/name   text_from_ListBox

    Close Browser
*** Keywords ***
