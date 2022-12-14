*** Settings ***
Documentation    Suite description
Resource         resource_settings.robot



*** Test Cases ***
Google search
    [Tags]  google
    Open Google Webpage
    Insert Search Text

