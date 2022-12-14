*** Settings ***
Documentation    Suite description
Resource         resources/Generics.resource

*** Test Cases ***
Google search
    [Tags]  google1
    Open Google Webpage