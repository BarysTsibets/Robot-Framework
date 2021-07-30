*** Settings ***

*** Test Cases ***
TC1 LogIn Test
    [Tags]  smoke
    Log To Console  User logged In
    Log To Console  Success Message

TC2 Edit Profil Test
    [Tags]  regression
    Log To Console  User edit profile data
    Log To Console  Confirmation Message

TC3 Log Out Test
    [Tags]  smoke
    Log To Console  User logged Out
    Log To Console  Success Message

#robot -i smoke TestCases\22_Tags.robot               include tests with [Tag]  smoke in Run
#robot --include=smoke TestCases\22_Tags.robot        include tests with [Tag]  smoke in Run

#robot -e smoke TestCases\22_Tags.robot                exclude tests with [Tag]  smoke in Run
#robot --exclude smoke TestCases\22_Tags.robot         exclude tests with [Tag]  smoke in Run

#robot -i smoke -e regression TestCases\22_Tags.robot        include tests with [Tag]  smoke And Exclude [Tag]  regression

