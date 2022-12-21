*** Settings ***
############################################################################
#                                Libraries                                 #
############################################################################
Library    SeleniumLibrary
Library    String
Library    resources/CustomPython/SimpleSalesforce.py
Library    FakerLibrary    locale=en_GB
Library    OperatingSystem
Library    JSONLibrary

############################################################################
#                                Keywords                                  #
############################################################################

Resource            resources/Generics.resource
Resource            resources/Generics_TestData.resource
Resource            resources/SF/Salesforce_GUI.resource
Resource            resources/SF/SF_TestCases.resource
Resource            resource_settings.robot
Resource            resources/SF/genericSalesforce.resource


*** Variables ***
${SALESFORCE_AUTH_URL}          https://test.salesforce.com/services/oauth2/token
${WEB_URL}    https://cjs-prod.lightning.force.com/
${LEAD_URL}    https://cjs-prod.lightning.force.com/lightning/o/Lead/list?filterName=00B6g000005OiaqEAC

