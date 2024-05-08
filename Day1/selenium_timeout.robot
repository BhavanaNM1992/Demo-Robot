*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}   chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}    Admin
${password}    admin123

*** Test Cases ***
LoginTest
   logIntoApplication

*** Keywords ***
logIntoApplication
    ${implicitwait}=    Get Selenium Implicit Wait
    Log To Console    ${implicitwait}
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
#    Set Selenium Timeout    10    #below stetments wait upto 10 sec not 5 sec of default
    #Wait Until Element Contains    Login       #5 sec
    Set Selenium Implicit Wait    5
    Input Text    name:username    ${username}
    Input Text    name:password    ${password}
    Click Element    xpath://button[normalize-space()='Login']
    Log To Console    "login succesfully"
    ${implicitwait}=    Get Selenium Implicit Wait
    Log To Console    ${implicitwait}



