#user defined keyword with arguments
*** Settings ***
Library  Selenium2Library

*** Keywords ***
capturescreenshoot
    [Arguments]    ${appurl}    ${appbrowser}     ${appusername}    ${app_password}
    Open Browser   ${appurl}    ${appbrowser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Input Text    name:username    ${appusername}
    Input Text    name:password    ${app_password}
    Click Element    xpath://button[normalize-space()='Login']
    ${title}=   Get Title
    RETURN    ${title}