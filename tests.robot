*** Settings ***
Documentation    Suite description
Resource         resources/Generics.resource

*** Test Cases ***
Google search
    [Tags]  google
    Open Google Webpage
    Insert Search Text
