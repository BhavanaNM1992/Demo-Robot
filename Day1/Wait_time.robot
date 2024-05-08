#selenium speed -->each scripts it will wait upto mentioned time
#selenium timeout
#selenium implicit wait --- applies to each scripts time, executes one after other , taking meioned time
#speed

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
    ${speed}=   get selenium speed
    Log To Console    ${speed}
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Speed    4
    Click Element  xpath://a[normalize-space()='Log in']
    Input Text    id:Email    ${username}
    Input Text    id:Password    ${password}
    Click Element    xpath://button[normalize-space()='Log in']
    Log To Console    "login succesfully"
    ${speed}=   get selenium speed
    Log To Console    ${speed}





