*** Settings ***
Resource         Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Variables ***


*** Test Cases ***

Caso 1: Acessar a sessão Sobre
     Acessar a página home
     Clicar na opção "Sobre"
#    Conferir se o título "Sobre nós" está sendo mostrado

#Caso 2: Entrar em contato
#    Acessar a página home
#    Clicar no botão "Agendar um horário"
#Ver como fazer para conferir se deu certo, mostrar o whats

#Caso 3: Verificar os Depoimentos
#    Acessar a página home
#    Clicar na opção "Depoimentos"
#    Conferir se o depoimento de "Bia Fray" está sendo mostrado