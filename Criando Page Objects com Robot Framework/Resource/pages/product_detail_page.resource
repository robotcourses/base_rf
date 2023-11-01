*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/product_details_locators.yml

*** Keywords ***
Adicionar item ao carrinho
    Wait Until Element Is Visible    xpath=${btn_product_quantity_up}

    FOR    ${counter}    IN RANGE    5
        Click Element  xpath=${btn_product_quantity_up}
    END

    Click Element  xpath=${btn_add_to_cart}