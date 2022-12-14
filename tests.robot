*** Settings ***
Documentation    Suite description
Resource         resources/Generics.resources

*** Test Cases ***
Google search
    [Tags]  search-keyword
    Open Google Webpage