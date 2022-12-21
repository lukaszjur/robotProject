*** Variables ***
${LEAD_STATUS}    NEW


*** Keywords ***
Lead Object Is Uploaded To Salesforce
    ${last_name}=    FakerLibrary.last_name
    ${first_name}=    FakerLibrary.first_name
    ${name}=    Catenate    ${first_name}    ${last_name}
    Set Test Variable   ${NAME}    ${name}
    ${company}=    FakerLibrary.Company
    ${session}=    Salesforce Authentication    ${SALESFORCE_USER}    ${SALESFORCE_PASSWORD}    ${SALESFORCE_TOKEN}
    ${lead_id}=    Create Lead Record    ${session}    ${first_name}    ${last_name}    ${company}    ${LEAD_STATUS}
    Set Test Variable    ${LEAD_ID}    ${lead_id}
    Set Test Variable    ${SESSION}    ${session}

User Goes To The Salesforce
    Open Salesforce Login Page
    Insert SF Credentials
    Salesforce Homepage Check


Uploaded Lead Appears On The List
    Go To Leads Tab    ${NAME}

Delete Lead
    Delete Lead Record    ${SESSION}    ${LEAD_ID}