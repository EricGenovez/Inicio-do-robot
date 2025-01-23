*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${variavel1}    teste
${variavel2}    eric
${variavel3}    12345


*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com/     chrome

fechar navegador
    Close Browser

abrir site eletroclub
    Open Browser    https://www.eletroclub.com.br/?sc=11    chrome

*** Test Cases ***
Cenário 1: Teste de abrir site google
    [Tags]    regressivo
    abrir site do google
    fechar navegador

Cenário 2: Teste de abrir site eletroclub
    abrir site eletroclub
    Close Browser

    