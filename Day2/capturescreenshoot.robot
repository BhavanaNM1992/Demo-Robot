*** Settings ***
Library  Selenium2Library


*** Variables ***
${browser}   chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}    Admin
${password}    admin123

*** Test Cases ***
LoginTest
   capturescreenshoot

*** Keywords ***
capturescreenshoot
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Sleep    4
    Capture Element Screenshot    xpath://img[@alt='company-branding']    logo1.png
    Input Text    name:username    ${username}
    Input Text    name:password    ${password}
    Sleep    5
    Capture Page Screenshot    webpage1.png
    Click Element    xpath://button[normalize-space()='Login']





