*** Test Cases ***
ForLoopTest1
    FOR   ${i}   IN RANGE    1   10                         #FOR Loop In Range
        Log To Console  ${i}
    END

ForLoop2
    FOR  ${i}    IN    1  2  3  4  5  6                     #2 blank spaces between numbers
        Log To Console  ${i}
    END

ForLoop3
    @{items}    Create List  1  2  3   4   5                #Create list variable
    FOR     ${i}    IN     @{items}
        Log To Console  ${i}
    END

ForLoop4
    @{namelist}     Create List     1  2  3  4  5
    FOR  ${i}   IN   @{namelist}
        Exit For Loop If  ${i}==3                           #Exit LOOP
    END