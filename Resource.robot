*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://nlw-kira-1.netlify.app/

** Keywords ***
### SETUP AND TEARDOWN ###
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}


Fechar navegador
    Close Browser



### AÇÕES ###
Acessar a página home
    Title Should Be    OriginSix


Clicar na opção "${OPÇÃO}"
     Wait Until Element Is Visible    css=#header > nav > a
#    Click Element                    xpath=//*[@id="header"]//a[@href='#about']               - Esse usar em quando o media em telas menores estiver pronto
     Click Element                    xpath=//*[@id="header"]//*[@class='toogle icon-menu']


#Montar um cenário aqui para selenionar o menu menor - Que aparece e some, da para fazer igual aquele de adicionar o produto no carrinho.

#    Conferir se o título "{TÍTULO}" está sendo mostrado