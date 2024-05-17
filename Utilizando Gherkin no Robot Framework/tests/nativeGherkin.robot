Language: Brazilian Portuguese

*** Settings ***
Test Tags  gherkin
Test Setup  Abrir Browser
Resource    ../resources/actions/dado.resource
Resource    ../resources/actions/quando.resource
Resource    ../resources/actions/entao.resource
Resource    ../resources/utils/open_browser.resource
Test Teardown  Close All Browsers

*** Test Cases ***
Realizar Compra
    Dado que eu esteja logado
    Quando eu adicionar item ao carrinho
    Então devo ver uma mensagem informando a adição do item ao carrinho