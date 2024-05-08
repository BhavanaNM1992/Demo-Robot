*** Settings ***
Library    Selenium2Library
Resource    ../Day3/new_list.robot

*** Test Cases ***
Yatra flights search
    Set Selenium Implicit Wait    5
    flight_origin   Bangalore (BLR)

    flight_departure    Jaipur (JAI)
    date_selection      10/08/2024
    search_filght

