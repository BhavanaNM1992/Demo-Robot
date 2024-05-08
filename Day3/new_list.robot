*** Settings ***
Library    Selenium2Library
Library    Collections
Library    OperatingSystem
Library    XML

*** Variables ***
${url}    https://www.yatra.com/
${browser}    ie

*** Keywords ***
flight_origin
    [Arguments]     ${select_origin}
#    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
#    ${prefs}=    Create Dictionary    profile.default_content_setting_values.notifications=2
#    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Click Element    xpath://label[@for='BE_flight_origin_city']
    @{origin_count}=     Get WebElements   xpath://div[@class='viewport']//div [@class='ac_airport']
    FOR    ${i}    IN    @{origin_count}
        IF    $select_origin in $i.text
            Click Element    ${i}
            BREAK
        END
    END

flight_departure
    [Arguments]     ${departure_place}
    Set Selenium Implicit Wait    10
    ${departure_count}=     Get WebElements    xpath=//div[@class='ac_results dest_ac']//div[@class='viewport']//li
    FOR    ${j}    IN    @{departure_count}
        IF    $departure_place in $j.text
            Click Element    ${j}
            BREAK
        END
    END

date_selection
    [Arguments]     ${selected_date}
    Set Selenium Implicit Wait    10
    Click Element    xpath://input[@id='BE_flight_origin_date']
    ${calender_dates}=       Get WebElements    xpath://div[@id='monthWrapper']//tbody//td[@class!='inActiveTD']
    FOR    ${date}    IN    @{calender_dates}
        ${date1}=   Selenium2Library.Get Element Attribute   ${date}   data-date
            IF    $date1 == $selected_date
                Click Element    ${date1}
                BREAK
            END
    END
    
search_filght
    Click Element    xpath://a[normalize-space()='Non Stop Flights']










