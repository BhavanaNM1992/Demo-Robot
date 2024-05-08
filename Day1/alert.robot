*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}   chrome
${url}    https://snapdeal.com/
${username}    Admin
${password}    admin123

*** Test Cases ***
LoginTest
   logIntoApplication

*** Keywords ***
logIntoApplication
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
#    Handle Alert    accept
    Handle Alert    dismiss
    Alert Should Be Present    Notifications can be turned off anytime from settings.
    Log To Console    alert present




