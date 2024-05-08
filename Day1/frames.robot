#web pages are divided into multiple parts,with the help of frames we can handle each frames
*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}   chrome
${url}    https://www.htmlelements.com/demos/listbox/radio-buttons/

*** Test Cases ***
FrameHandle
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
#    Click Element   xpath://a[normalize-space()='Radio Buttons']
#    Select Frame    xpath://smart-list-box[@id='listBoxc49e']
    Select Frame     xpath://iframe[@class='demo-frame']
    Scroll Element Into View    xpath://span[normalize-space()='Uruguay']
    Click Link    Uruguay
