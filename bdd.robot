*** Settings ***
Library     SeleniumLibrary


*** Variables ***
#Dados do teste
${NomeDaMusica}    Fireflies Owl city

#Variáveis de configuração
${URL}        https://www.youtube.com/
${Brownser}   chrome

#Elementos
${Input_Pesquisa}    //*[@id="center"]/yt-searchbox/div[1]/form/input
${Button_Pesquisa}   //*[@id="center"]/yt-searchbox/button
${Primeiro}          (//*[@id="video-title"])[1]
${Prova}             //*[@id="subscribe-button-shape"]/button/yt-touch-feedback-shape/div/div[2]


*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${Brownser}
    
Quando digito o nome da música
    Input Text    ${Input_Pesquisa}    ${NomeDaMusica}
    
E clico no botão buscar
    Click Button    ${Button_Pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${Primeiro}    10
    Click Element    ${Primeiro}

Então o video é executado
    Wait Until Element Is Visible    ${Prova}    10
    Element Should Be Visible    ${Prova}
    Sleep    2s
    Close Browser

*** Test Cases ***
Cenário 1: Executar video no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado
