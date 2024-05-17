*** Settings ***
Resource    ../pages/home_page.resource
Resource    ../pages/authentication_page.resource
Resource    ../pages/my_account_page.resource

*** Keywords ***
que eu esteja logado
    Clicar no botão login
    Realizar Login
    Retornar para a Home