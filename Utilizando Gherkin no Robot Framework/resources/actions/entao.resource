*** Settings ***
Resource    ../pages/cart_layer_page.resource

*** Keywords ***
devo ver uma mensagem informando a adição do item ao carrinho
    Validar Mensagem de Produto Adicionado no Cart Layer