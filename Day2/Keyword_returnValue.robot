#user defined keyword with arguments
*** Settings ***
Library  Selenium2Library
Resource    ../Resource/Resouce_launchApp.robot


*** Variables ***
${browser}   chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}    Admin
${password}    admin123

*** Test Cases ***
LoginTest
   ${page_title}=    capturescreenshoot    ${url}    ${browser}    ${username}    ${password}
#   Log To Console    ${page_title}
   log     ${page_title}






