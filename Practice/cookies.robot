*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}   ff
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}    Admin
${password}    admin123

*** Test Cases ***
adding cookies
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    ${alias}=    Get Browser Aliases

    Input Text    name:username    ${username}
    Input Text    name:password    ${password}
    Click Element    xpath://button[normalize-space()='Login']
    Log To Console    "login succesfully"

    ${new_cookies}=     Add Cookie    bhavana    valahatti
    Log To Console    ${new_cookies}
    ${cookie}=    Get Cookies
    Log To Console    ${cookie}
    ${len_cookie}=    Get Length    ${cookie}
    Log To Console    ${len_cookie}
    
    

      