*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/home_locators.yml


*** Keywords ***
Clicar no botão login
    Wait Until Element Is Visible  xpath=${btn_login}
    Click Element  xpath=${btn_login}

Selecionar um produto
    Wait Until Element Is Visible  xpath=${product}
    Click Element  xpath=${product}