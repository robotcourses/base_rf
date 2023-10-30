*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Realizar Compra
    
    Open Browser
    ...  url=https://automationtest.shop/index.php
    ...  browser=chrome
    
    ## Home - Clicando no Botão Sign In
    Wait Until Element Is Visible    
    ...    xpath=//a[contains(text(),'Sign in')]

    Click Element    
    ...    xpath=//a[contains(text(),'Sign in')]

    ## Authentication - Realizar Login
    Wait Until Element Is Visible    
    ...    xpath=//input[@id='email']

    Input Text    
    ...    xpath=//input[@id='email']
    ...    text=teste@robotcourses.com.br

    Wait Until Element Is Visible    
    ...    xpath=//input[@id='passwd']

    Input Text    
    ...    xpath=//input[@id='passwd']
    ...    text=BHIrSzM0

    Click Button    
    ...    xpath=//button[@id='SubmitLogin']

    ## My Account - Retornar para a Home
    Wait Until Element Is Visible    
    ...    xpath=//div[@id='header_logo']

    Click Element
    ...    xpath=//div[@id='header_logo']

    #Home : Selecionar um produto
    Wait Until Element Is Visible    
    ...    xpath=//ul[@id='homefeatured']//a[@class='product-name' and @title='Faded Short Sleeves T-shirt']

    Click Element    
    ...    xpath=//ul[@id='homefeatured']//a[@class='product-name' and @title='Faded Short Sleeves T-shirt']

    ## Product Detail : Adicionar item ao carrinho

    Wait Until Element Is Visible    
    ...    locator=//a[@class='btn btn-default button-plus product_quantity_up']

    FOR    ${counter}    IN RANGE    5
        
        Click Element
        ...    locator=//a[@class='btn btn-default button-plus product_quantity_up']

    END

    Click Element    
    ...    locator=//p[@id='add_to_cart']//button[@type='submit']

    ## Cart Layer
    Wait Until Element Is Visible    
    ...    xpath=//div[@id='layer_cart']//div[@class='clearfix']
    
    Element Should Contain    
    ...    xpath=//div[@id='layer_cart']//div[@class='clearfix']//span[@class='title']
    ...    expected=Product successfully added to your shopping cart

