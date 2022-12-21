*** Variables ***
${INPUT_USERNAME}    //*[@id="username"]
${INPUT_PASSWORD}    //*[@id="password"]
${LOGIN_BUTTON}    //*[@id="Login"]

${SALESFORCE_APP_LAUNCHER}    //div[@class="slds-icon-waffle"]
${NEW_BUTTON}   //div[@title="New"]

${FOLLOW_BUTTON}    //*[@id="leftColumn-45"]/slot/slot/flexipage-component2/slot/records-lwc-highlights-panel/records-lwc-record-layout/forcegenerated-highlightspanel_lead___012000000000000aaa___compact___view___recordlayout2/records-highlights2/div[2]/div[2]/div[1]/div/span/div/button
${RECORD_URL}    https://cjs-prod.lightning.force.com/lightning/r/Lead/
${NAME_HEADER}    //*[@id="leftColumn-45"]/slot/slot/flexipage-component2/slot/records-lwc-highlights-panel/records-lwc-record-layout/forcegenerated-highlightspanel_lead___012000000000000aaa___compact___view___recordlayout2/records-highlights2/div[2]/div[1]/div/div/div/h1/span/slot/lightning-formatted-name


*** Keywords ***
Open Salesforce Login Page
    Open Browser    ${WEB_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5

Insert SF Credentials
#    [Arguments]    ${username}    {password}
    Input Text    ${INPUT_USERNAME}    ${SALESFORCE_USER}
    Input Text    ${INPUT_PASSWORD}    ${SALESFORCE_PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Salesforce Homepage Check
    Wait Until Element Is Visible    ${SALESFORCE_APP_LAUNCHER}

Go To Leads Tab
    [Arguments]    ${lead_name}
    Go To    ${LEAD_URL}
    Wait Until Element Is Visible    ${NEW_BUTTON}
    Set Test Variable    ${DIRECT_LEAD_URL}    ${RECORD_URL}${LEAD_ID}/view
    Go To    ${DIRECT_LEAD_URL}
    Wait Until Element Is Visible    ${FOLLOW_BUTTON}
    Element Should Contain    ${NAME_HEADER}    ${lead_name}
