*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/cart_layer_locators.yml

*** Keywords ***
Validar Mensagem de Produto Adicionado no Cart Layer
    Wait Until Element Is Visible  xpath=${cart_layer}
    Element Should Contain  xpath=${cart_layer_msg}  expected=Product successfully added to your shopping cart