*** Settings ***
Documentation    Suite description
Resource         resources/Generics.resource

*** Test Cases ***
Google search
    [Tags]  search-keyword
    Open Google Webpage