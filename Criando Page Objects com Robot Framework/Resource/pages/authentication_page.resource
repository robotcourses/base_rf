*** Settings ***
Library  SeleniumLibrary
Variables  ../data/login_data.yml
Variables  ../locators/authentication_locators.yml

*** Keywords ***
Realizar Login
    Wait Until Element Is Visible  xpath=${input_email}
    Input Text  xpath=${input_email}  text=${username}
    Wait Until Element Is Visible  xpath=${input_password}
    Input Text  xpath=${input_password}  text=${passowrd}
    Click Button  xpath=${btn_submit_login}