*** Settings ***
Library  RequestsLibrary
Resource    ../sessions/jsonplaceholder_session.resource

*** Keywords ***
GET JSONPlaceholder

    ${alias}  JSONPlaceholder Session

    ${response}  GET On Session
    ...  alias=${alias}
    ...  url=/users

    Log To Console    ${response.json()}
