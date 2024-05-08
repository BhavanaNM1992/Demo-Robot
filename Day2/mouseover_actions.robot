*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***
mouseactions_rightclick

*** Test Cases ***
mouseactions_rightclick
    Open Browser    https://vinothqaacademy.com/mouseevent/     chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Open Context Menu    id:rightclick
    
    Sleep    5
    Double Click Element    id:dblclick
    Sleep    5
    Scroll Element Into View    xpath://div[@id='droppableElement']
    Drag And Drop    id:draggableElement    id:droppableElement
