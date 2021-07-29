*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseOperationTest
    Open Browser  https://swisnl.github.io/jQuery-contextMenu/demo.html     chrome
    Maximize Browser Window

    Open Context Menu  css:[class="context-menu-one btn btn-neutral"]       #Mouse Right Click   Open Context Meny css:/xpath:

    sleep   1
    Go To   http://testautomationpractice.blogspot.com/

    Double Click Element    css:[ondblclick="myFunction1()"]                #Mouse Double Click   Double Click Element css:/xpath:

    Sleep  1
    Go To  http://dhtmlgoodies.com/scripts/drag-drop-nodes/drag-drop-nodes-demo2.html

    Drag And Drop  css:[id="node8"]     css:[id="node16"]                 #Drag And Drop    css:/xpath      css:/xpath
                                                                                            #drag element   #Drop Element
    Close All Browsers                                                                      #locator        #locator