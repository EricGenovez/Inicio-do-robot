*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${input_firstname}   //*[@id="post-body-3077692503353518311"]/div[1]/div/div/h2[2]/div[1]/div/div[2]/input
${input_lastname}    //*[@id="post-body-3077692503353518311"]/div[1]/div/div/h2[2]/div[1]/div/div[5]/input
${input_date}        //*[@id="datepicker"]
${button_submit}     //*[@id="submit"]


*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://www.techlistic.com/p/selenium-practice-form.html    chrome
preencher campos
    Input Text        ${input_firstname}    Joao
    Sleep             1s
    Input Text        ${input_lastname}     Silva
    Sleep             1s
    Input Text        ${input_date}        14/10/2024
    Sleep             1s
clicar em submit
    Sleep             1s
    Click Button      ${button_submit}
fechar navegador
    Close Browser

*** Test Cases ***
Cenáro 1: Preencher Formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador