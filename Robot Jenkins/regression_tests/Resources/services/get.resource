*** Settings ***
Library  RequestsLibrary

*** Keywords ***
Get Hello Jenkins

    ${response}  Get
    ...  url=http://localhost:8081/
    
    [Return]  ${response}
