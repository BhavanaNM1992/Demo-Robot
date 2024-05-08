*** Settings ***
Library  Selenium2Library


*** Variables ***

*** Test Cases ***
close_browser
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window

    Open Browser    https://www.yatra.com/    chrome
    Maximize Browser Window

    Close All Browsers
