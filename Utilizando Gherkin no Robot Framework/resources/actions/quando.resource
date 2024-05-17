*** Settings ***
Resource    ../pages/home_page.resource
Resource    ../pages/product_detail_page.resource

*** Keywords ***
eu adicionar item ao carrinho
    Selecionar um produto
    Adicionar item ao carrinho