#user defined keyword with arguments
*** Settings ***
Library  Selenium2Library


*** Variables ***
${browser}   chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}    Admin
${password}    admin123

*** Test Cases ***
LoginTest
   capturescreenshoot    ${url}    ${browser}    ${username}    ${password}

*** Keywords ***
capturescreenshoot
    [Arguments]    ${appurl}    ${appbrowser}     ${appusername}    ${app_password}
    Open Browser   ${appurl}    ${appbrowser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Input Text    name:username    ${appusername}
    Input Text    name:password    ${app_password}
    Click Element    xpath://button[normalize-space()='Login']




