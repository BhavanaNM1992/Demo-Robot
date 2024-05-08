*** Settings ***
Library    Selenium2Library

*** Test Cases ***
file_upload
    Open Browser    https://tus.io/demo      chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Sleep    5
    Scroll Element Into View      xpath://input[@id='P0-0']
    Sleep    5
#    Click Element   xpath://input[@id='P0-0']
#    Sleep    5
    Choose File     xpath://input[@id='P0-0']    C://Users/DELL/Desktop/File_io/test.txt
    Sleep    5
    Page Should Contain    The uploa complete!
    Log To Console    file uploaded
    Click Element At Coordinates    locator    xoffset    yoffset
    loc