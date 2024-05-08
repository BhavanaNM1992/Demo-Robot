*** Settings ***
Library  Selenium2Library
Library    Collections

*** Variables ***
${url}    https://www.yatra.com/
${browser}    chrome


*** Variables ***

*** Test Cases ***
search products
    [Documentation]     search verification
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    Click Element    xpath://label[@for='BE_flight_origin_city']
    @{origin_count}=     Get WebElements   xpath://div[@class='viewport']//div [@class='ac_airport']
    ${new_list}=    Create List
    FOR    ${i}    IN    @{origin_count}
        ${origin_text}=    Get Text    ${i}
        Append To List    ${new_list}     ${origin_text}

    END
    Log To Console    ${new_list}[2]


