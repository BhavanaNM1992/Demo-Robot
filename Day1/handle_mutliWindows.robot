*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary



*** Variables ***
${browser}   chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
TabbedWindowHandle
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    Click Link    xpath://a[normalize-space()='OrangeHRM, Inc']
    ${new_tab}=   Get Window Titles
    Log To Console    ${new_tab}
#    Switch Window   ['OrangeHRM', 'Human Resources Management Software | OrangeHRM']
     ${2ndTabHandle}=   Get Window Handles
     Log To Console    ${2ndTabHandle}

#        title=['OrangegetHRM', 'Human Resources Management Software | OrangeHRM']
    Click Element    id:Form_submitForm_action_request
    Sleep    4
    
    
