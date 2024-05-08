robot --include=sanity or regression dictory\testcases.robot
robot -i sanity or regression dictory\testcases.robot
robot -e sanity or regression dictory\testcases.robot
robot -i sanity -e regression dictory\testcases.robot



*** Settings ***
Library  Selenium2Library


*** Test Cases ***
TC1 login to application
    [Tags]  sanity
    Log To Console    login succesfully

TC2 access to admin page
    [Tags]  sanity
    Log To Console    access given

TC3 check dashboard
    [Tags]  regression
    Log To Console    summary page working fine

TC4 check balance list
    [Tags]  regression
    Log To Console    balance is matching