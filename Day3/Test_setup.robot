#Test setup = sripts runs before every testcases
#Test teardown = scripts run after every testcases
#Suit setup == runs before testsuits-collection of testcases
#suitteardown = runs after testsuits-collection of testcases

*** Settings ***
#Library  Selenium2Library

Suite Setup     Log To Console    open browser
Suite Teardown     Log To Console    Close browser
Test Setup      Log To Console    Launch application
Test Teardown      Log To Console    close application

*** Test Cases ***
TC1 Dashboard check
    Log To Console    Dashboard working fine
    
TC2 searchpage check
    Log To Console    search page working fine
    
TC3 payment mode
    Log To Console    payment mode working fine
