*** Settings ***
Library    Selenium2Library
Library    Collections
Library    OperatingSystem
Library    XML

*** Variables ***
${url}    https://www.yatra.com/
${browser}    ff
${selected_date}    15/05/2024


*** Test Cases ***
flight_origin
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    10
        Click Element    xpath://input[@id='BE_flight_origin_date']
        ${calender_dates}=       Get WebElements    xpath://div[@id='monthWrapper']//tbody//td[@class!='inActiveTD']
        FOR    ${date}    IN    @{calender_dates}
            ${date1}=   Selenium2Library.Get Element Attribute   ${date}    data-date
            IF    $date1 == $selected_date
                Click Element    ${date}
                BREAK
            END
        END
#        Click Element    xpath://a[normalize-space()='Non Stop Flights']
