*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
CountAllLinksTest
    Open Browser    http://testautomationpractice.blogspot.com/     headlesschrome
    Maximize Browser Window

    ${CountLinks}=  Get Element Count  css:a                  #Count all elements that have css tag --> a  (links)
    Log To Console  ${CountLinks}

    #@{linkItems}    Create List
    FOR     ${i}    IN RANGE    1   ${countLinks}+1           #Loop from 1 --> to num of elements that have tag "a"
        ${linktext}=   Get Text  xpath:(//a)[${i}]            #Get text from link  with tag "a" and index [i]
        Log To Console  ${Linktext}
    END

    Close All Browsers