#*** Settings ***
#Library  Selenium2Library

*** Test Cases ***
#forllop1
#    FOR    ${i}    IN RANGE    5   10
#        Log To Console    ${i}
#
#    END

forloop2
    FOR    ${i}    IN    1  2  3  4  5
        Log To Console    ${i}
        IF    ${i} == 3
            BREAK
        END

    END

#forloop3
#    @{items}=    Create List   [1,2,3,4,5,6]
#    FOR    ${item}    IN    @{items}
#        Log To Console    ${item}
#
#    END

#forloop4
#    @{string}=    Create List    bhavana  valahatti   nayana
#    FOR    ${item}    IN    @{string}
#       Log To Console    ${item}
#
#    END
