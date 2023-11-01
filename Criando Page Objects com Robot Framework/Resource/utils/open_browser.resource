*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Browser
    Open Browser
    ...  url=https://automationtest.shop/index.php
    ...  browser=ff