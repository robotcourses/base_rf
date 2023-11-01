*** Settings ***
Test Tags  POM2
Test Setup  Abrir Browser
Resource    ../Resource/utils/open_browser.resource
Resource    ../Resource/pages/home_page.resource
Resource    ../Resource/pages/authentication_page.resource
Resource    ../Resource/pages/my_account_page.resource
Resource    ../Resource/pages/product_detail_page.resource
Resource    ../Resource/pages/cart_layer_page.resource

*** Test Cases ***
Realizar Compra
    
    Clicar no botão login
    Realizar Login
    Retornar para a Home
    Selecionar um produto
    Adicionar item ao carrinho
    Validar Mensagem de Produto Adicionado no Cart Layer