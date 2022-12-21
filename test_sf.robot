*** Settings ***
Documentation    Creating Lead in Salesforce
Resource         resource_settings.robot
Suite Setup      Setup Environment
Test Teardown    Delete Lead


*** Test Cases ***
#SeleniumLibrary on RF doc
#    [Tags]  salesforce
#    Open Salesforce Login Page
#    Insert SF Credentials
#    Salesforce Homepage Check
#    Go To Leads Tab


Create Lead Object in SF
    [Tags]  salesforce
    Lead Object Is Uploaded To Salesforce
    User Goes To The Salesforce
    Uploaded Lead Appears On The List
#    Delete Lead


