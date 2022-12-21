*** Keywords ***
Setup Environment
    IF  ${runmode}=='Local'
        ${jsonfile}=    Load Json From File    myvariables.json
        ${username}=    Get Value From Json    ${jsonfile}    $..SALESFORCE_USER
        ${password}=    Get Value From Json    ${jsonfile}    $..SALESFORCE_PASSWORD
        ${token}=    Get Value From Json    ${jsonfile}    $..SALESFORCE_TOKEN
        #log   ${jsonfile} ${username}[0] ${password}[0] ${token}[0]
        Set Suite Variable    ${SALESFORCE_USER}    ${username}[0]
        Set Suite Variable    ${SALESFORCE_PASSWORD}    ${password}[0]
        Set Suite Variable    ${SALESFORCE_TOKEN}    ${token}[0]
        log    ${SALESFORCE_USER} ${SALESFORCE_PASSWORD} ${SALESFORCE_TOKEN}
    ELSE IF  ${runmode}=='pipeline'
        Set Suite Variable  ${SALESFORCE_USER}    %{SALESFORCE_USER}
        Set Suite Variable  ${SALESFORCE_PASSWORD}    %{SALESFORCE_PASSWORD}
        Set Suite Variable  ${SALESFORCE_TOKEN}    %{SALESFORCE_TOKEN}


