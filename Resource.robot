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

Altera tamanho da janela para notebook
    Set Window Size    1366    669

Retorna para janela em Monitor
    Set Window Size    1920    1080


### AÇÕES ###
Acessar a página home
    Title Should Be    OriginSix

Clicar na opção "${OPÇÃO}"
     Wait Until Element Is Visible    css=#header > nav > a
#    Click Element                    xpath=//*[@id="header"]//a[@href='#about']               - Esse usar em quando o media em telas menores estiver pronto
     Click Element                    xpath=//*[@id="header"]//*[@class='toogle icon-menu']


#Montar um cenário aqui para selenionar o menu menor - Que aparece e some, da para fazer igual aquele de adicionar o produto no carrinho.

Conferir se o título "${TÍTULO}" está sendo mostrado
    Wait Until Element Is Visible    xpath=//*[@id="header"]//a[@href='#about']
    Click Element                    xpath=//*[@id="header"]//a[@href='#about']

Conferir se o depoimento de "${DEPOIMENTO}" está sendo mostrado
     Wait Until Element Is Enabled    xpath=//*[@id="testimonials"]/div/header/h2
#    Wait Until Element Is Enabled    xpath=//*[@id="swiper-wrapper-c6896a3ac6b5107c5"]/div[1]/blockquote/p    
#    Element Should Be Visible        xpath=//*[@id="swiper-wrapper-c6896a3ac6b5107c5"]/div[1]/blockquote/p

#Descobrir como fazer automação em objetos sem Seletores, ou com Seletores não expecificos


Clicar no botão "${BOTÃO}"
     Wait Until Element Is Enabled    css=#contact > div > div.text > h2
     Wait Until Element Is Enabled    css=#contact > div > div.text > a
#    Title Should Be                  OriginSix
#    Scroll Element Into View         xpath=//*[@id="contact"]/div/div[1]/a        
#    Double Click Element             xpath=//*[@id="contact"]/div/div[1]/a
#    Scroll Element Into View         xpath=//*[@id="home"]/div/div[2]/h2
#    Click Button                     xpath=//*[@id="home"]//a[@class='button']