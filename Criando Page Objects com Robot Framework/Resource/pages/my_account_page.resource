*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/my_account_locators.yml

*** Keywords ***
Retornar para a Home
    Wait Until Element Is Visible  xpath=${header_logo}
    Click Element  xpath=${header_logo}