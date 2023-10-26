*** Settings ***
Library  RequestsLibrary

*** Keywords ***
JSONPlaceholder Session
    [Return]
    ...  ${alias}

    ${alias}  Set Variable  JSONPlaceholder

    Create Session
    ...  alias=${alias}
    ...  url=https://jsonplaceholder.typicode.com/
    ...  verify=${False}
    ...  disable_warnings=${True}