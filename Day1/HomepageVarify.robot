*** Settings ***
Library    Selenium2Library


*** Variables ***
${browser}   chrome
${url}    https://demo.nopcommerce.com/



*** Test Cases ***
HomescreenTitle
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[normalize-space()='Log in']
    ${email_var}    Set Variable    xpath://label[normalize-space()='Email:']
    Element Should Be Visible    ${email_var}
    Element Should Be Enabled    ${email_var}
    Clear Element Text   id:Email
    Input Text    id:Email    bhavanavalahatti@gmail.com
    Clear Element Text    id:Password
    Input Text    id:Password   Admin123
    Click Element    xpath://button[normalize-space()='Log in']
    
    
    
*** Keywords ***

