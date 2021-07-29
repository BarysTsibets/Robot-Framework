*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
CaptureScreenTest
    Open Browser  https://opensource-demo.orangehrmlive.com/    chrome
    Input Text  id:txtUsername  Admin
    Input Text  id:txtPassword  admin123

    Capture Element Screenshot  xpath://*[@id="divLogo"]/img    C:/Users/BorisPC/PycharmProjects/untitled/HelloWorld/Robot-Framework/TestCases/logo.png
                                                                #in folder path "\"  Must be changed to "/"
    Capture Page Screenshot     C:/Users/BorisPC/PycharmProjects/untitled/HelloWorld/Robot-Framework/TestCases/Page.png

    Sleep  3
    Close Browser