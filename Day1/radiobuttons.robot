*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}    https://materializecss.com/radio-buttons.html

*** Test Cases ***
TestRadioButton
    RadioButtonTest
    listofRadioButtons


*** Keywords ***
RadioButtonTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Click Element    xpath://span[text()="Yellow"]

listofRadioButtons
    Open Browser    https://www.yatra.com/   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    ${second_round}    Get WebElement    xpath://a[@title='Round Trip']
    Log To Console    ${second_round}

    Click Element    xpath://ul[@id='special_offers']
    Click Element    xpath://a[normalize-space()='Non Stop Flights']
    Click Element    xpath://ul[@id='armedforces_offers']
    Sleep    5
#    used to select from dropdown option
#    Select From List By Index    locator
#    Select From List By Label    locator
#    Select From List By Label    locator

#    used to select lists
    Select From List By Index    locator






