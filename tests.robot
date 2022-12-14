*** Settings ***
Documentation    Suite description
Resource         ../resource_settings.robot

*** Test Cases ***
Google search
    [Tags]  search-keyword
    Open Google Webpage