*** Keywords ***

Open Google Webpage
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size     1920    1080
    Maximize Browser Window
    Set Selenium Speed    0.3
    Execute javascript       document.body.style.zoom="80%"


Insert Search Text
    [Arguments]    ${text}
    Wait Until Element Is Enabled    ${CONFIRM_WINDOW}    10
    Click Element    ${CONFIRM_WINDOW}
    Input Text    ${SEARCH_FIELD}    text
