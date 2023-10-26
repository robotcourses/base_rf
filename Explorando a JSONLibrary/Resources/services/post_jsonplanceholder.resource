*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Resource    ../sessions/jsonplaceholder_session.resource

*** Keywords ***
Post JSONPlaceholder
    [Documentation]  Executará o endpoint /users da API JSONPlaceholder
    [Arguments]
    ...  ${nome_produto}=${None}
    ...  ${preco_produto}=${None}
    ...  ${nota_avaliacao}=${None}
    ...  ${usuario_avaliacao}=${None}
    ...  ${descricao}=${None}
    [Return]
    ...  ${response.json()}
    
    ${alias}  JSONPlaceholder Session
    ${json}  Request Body  ${nome_produto}  ${preco_produto}  ${usuario_avaliacao}  ${nota_avaliacao}  ${descricao}

    ${response}  POST On Session
    ...  alias=${alias}
    ...  url=/users
    ...  json=${json}

        Log To Console    ${\n}${response.json()}

Request Body
    [Documentation]  Construirá o body da requisição conforme argumentos passados pelos cenários de teste
    [Arguments]
    ...  ${nome_produto}
    ...  ${preco_produto}
    ...  ${usuario_avaliacao}
    ...  ${nota_avaliacao}
    ...  ${descricao}
    [Return]
    ...  ${json}
    
    ${json}  Load Json From File    
    ...    file_name=${CURDIR}${/}json${/}json_example.json

    IF    "${nome_produto}" != "${None}"
        ${json}  Update Value To Json    
        ...    json_object=${json}
        ...    json_path=$.nome
        ...    new_value=${nome_produto}
    ELSE
        ${json}  Delete Object From Json    
        ...    json_object=${json}    
        ...    json_path=$.nome
    END

    IF    ${preco_produto}
    ${json}  Update Value To Json    
    ...    json_object=${json}
    ...    json_path=$.preco
    ...    new_value=${preco_produto}
    ELSE
        ${json}  Delete Object From Json    
        ...    json_object=${json}    
        ...    json_path=$.preco
    END
 
    IF    ${descricao}
        ${json}  Add Object To Json    
        ...    json_object=${json}    
        ...    json_path=$    
        ...    object_to_add=${descricao} 
    END

    ${list_avaliacoes}   Create List
    ${avaliacoes}  Load Json From File    
    ...    file_name=${CURDIR}${/}json${/}avaliacoes.json

    FOR    ${usuario}    ${nota}    IN ZIP    ${usuario_avaliacao}    ${nota_avaliacao}
        ${avaliacoes}  Update Value To Json    
        ...    json_object=${avaliacoes}
        ...    json_path=$.usuario
        ...    new_value=${usuario}
        
        ${avaliacoes}  Update Value To Json    
        ...    json_object=${avaliacoes}
        ...    json_path=$.nota
        ...    new_value=${nota}
        
        Append To List  ${list_avaliacoes}  ${avaliacoes}
    END

    ${json}  Update Value To Json    
    ...    json_object=${json}
    ...    json_path=$.avaliacoes
    ...    new_value=${list_avaliacoes}
