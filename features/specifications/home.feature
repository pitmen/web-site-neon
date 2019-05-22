# language: pt
# encoding: utf-8 
@home
Funcionalidade: Acessar Home Page
Para utilizar a NEON
Como usuário 
Eu quero poder acessar o sistema através da URL correta

Contexto: possibilidade de acessar a Home Page da NEON
Tela de Perguntas, pode ser acessada através do menu Perguntas.
(Home Page > Menu Perguntas)    
    Dado que eu acessei o site da NEON
    E que acessei o menu Perguntas

Esquema do Cenário: tenta acessar a Home Page da NEON com a URL errada
    Quando eu acessar a NEON com URL inválidos <url>
    Então não acesso a página correta
    Exemplos:
    | url                    |
    | "https://neon.com"     | 
    | "https://google.com"   | 
    |  ""                    | 
   
@acessar-perguntas-sucesso
Cenário: acessar a aba Perguntas do site da NEON com sucesso
    Então eu acesso a aba Perguntas do site da NEON com sucesso