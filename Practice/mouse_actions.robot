*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}   chrome
${url}    https://www.ebay.com/

*** Variables ***
${search}    xpath://input[@id='gh-ac']

*** Test Cases ***
search products
    [Documentation]     search verification
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    Input Text    ${search}    iphone pro
    Click Element   xpath://input[@id='gh-btn']
    Press Keys   xpath://input[@id='gh-btn']    AAAA
    Click Element    xpath://span[contains(text(),'Condition')]
    Mouse Over    xpath://span[@id='nid-ybl-3']//button[@type='button']/span
    Select Checkbox    xpath://span[text()='New']