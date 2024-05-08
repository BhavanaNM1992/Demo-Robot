*** Settings ***
Library  Selenium2Library

*** Test Cases ***
ScroolPage
    Open Browser    https://www.mercurytravels.co.in/flights    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Execute Javascript    window.scrollTo(0,1500)
    
#    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #end of the page
#    Sleep    5
#    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)   #starting point
