*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Navigation
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    ${loc1}=    Get Location
    Log To Console    ${loc1}
    
    Go To    https://www.yatra.com/
    ${loc2}=    Get Location
    Log To Console    ${loc2}

    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}
