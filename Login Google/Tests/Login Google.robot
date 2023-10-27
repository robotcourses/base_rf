*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library    ../Resources/custom_libraries/undetected_chromedriver.py

*** Variables ***
${BROWSER}        chrome
${URL}            https://accounts.google.com

*** Test Cases ***
teste
    Open New Browser
    ...  url=${URL}
