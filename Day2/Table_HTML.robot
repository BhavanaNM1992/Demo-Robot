*** Settings ***
Library  Selenium2Library
Library    Collections

*** Test Cases ***
TableExtraction
    Open Browser    https://www.w3schools.com/html/html_tables.asp      chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Scroll Element Into View    xpath://table[@id='customers']
    ${row}=    Get Element Count    xpath://table[@id='customers']/tbody/tr
    ${columns}=     Get Element Count    xpath://table[@id='customers']/tbody/tr/th
    Log To Console    ${row}
    Log To Console    ${columns}

    Table Column Should Contain    xpath://table[@id='customers']    3   Germany
    Table Cell Should Contain    locator    row    column    expected
    Table Header Should Contain    locator    expected
    Table Should Contain    locator    expected