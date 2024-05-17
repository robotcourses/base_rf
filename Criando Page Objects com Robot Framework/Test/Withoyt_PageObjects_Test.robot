*** Settings ***
Test Tags  POM
Library  SeleniumLibrary
Resource   ../Resource/utils/open_browser.resource
Variables  ../Resource/data/login_data.yml
Variables  ../Resource/locators/home_locators.yml
Variables  ../Resource/locators/authentication_locators.yml
Variables  ../Resource/locators/product_details_locators.yml
Variables  ../Resource/locators/my_account_locators.yml
Variables  ../Resource/locators/cart_layer_locators.yml
Test Setup  Abrir Browser
Test Teardown  Close All Browsers

*** Test Cases ***
Realizar Compra
    
    ## Home - Clicando no Botão Sign In
    Wait Until Element Is Visible  xpath=${btn_login}
    Click Element  xpath=${btn_login}

    ## Authentication - Realizar Login
    Wait Until Element Is Visible  xpath=${input_email}
    Input Text  xpath=${input_email}  text=${username}
    Wait Until Element Is Visible  xpath=${input_password}
    Input Text  xpath=${input_password}  text=${passowrd}
    Click Button  xpath=${btn_submit_login}

    ## My Account - Retornar para a Home
    Wait Until Element Is Visible  xpath=${header_logo}
    Click Element  xpath=${header_logo}

    #Home : Selecionar um produto
    Wait Until Element Is Visible  xpath=${product}
    Click Element  xpath=${product}

    ## Product Detail : Adicionar item ao carrinho
    Wait Until Element Is Visible    xpath=${btn_product_quantity_up}

    FOR    ${counter}    IN RANGE    5
        Click Element  xpath=${btn_product_quantity_up}
    END

    Click Element  xpath=${btn_add_to_cart}

    ## Cart Layer
    Wait Until Element Is Visible  xpath=${cart_layer}

    Element Should Contain  xpath=${cart_layer_msg}  expected=Product successfully added to your shopping cart
