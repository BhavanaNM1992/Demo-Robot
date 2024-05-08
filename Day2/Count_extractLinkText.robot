*** Settings ***
Library  Selenium2Library
Library    Collections

*** Variables ***
${allLinks}    xpath://a


*** Test Cases ***
elementcount

    Open Browser   https://demo.guru99.com/test/newtours/    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    ${element_count}=   Get Element Count    xpath://a
    Log To Console    ${element_count}

    @{LinkList}    Create List

    FOR    ${i}    IN RANGE    1   ${element_count}+1
        ${linkText}=    Get Text    xpath:(//a)[${i}]
        Append To List    ${LinkList}    ${linkText}


    END
    Log To Console    ${LinkList}

