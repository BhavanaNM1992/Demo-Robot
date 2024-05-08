*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}   chrome
${url}    https://demo.nopcommerce.com/
${username}  bhavanavalahatti@gmail.com
${password}   Admin123

*** Test Cases ***
LoginTest
   logIntoApplication

*** Keywords ***
logIntoApplication
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Click Element  xpath://a[normalize-space()='Log in']
    Input Text    id:Email    ${username}
    Input Text    id:Password    ${password}
    Click Element    xpath://button[normalize-space()='Log in']
    Log To Console    "login succesfully"







