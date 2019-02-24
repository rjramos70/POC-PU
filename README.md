# POC-PU

Projeto de prova de conceito de uma plataforma web de vantagens simplificada do qual conta com a publicação de ofertas e suas respectivas opções de compra 

## Instalar

	1. Baixe o projeto via Github do endereço "https://github.com/rjramos70/POC-PU" e salve dentro da workspace de sua preferência;
	2. Importe o projeto dentro da IDE de sua preferência, este projeto foi desenvolvido com Spring Tool Suite Spring Tool Suite Version: 3.9.4.RELEASE com servidor de aplicação web Tomcat v8.5 e sistema operacional MacOS Mojave. 	

## Executar

Clique com o botão direto do mouse sobre o nome do projeto, depois RUN AS, e depois Run on Server, nesta implementação foi utilizado a IDE Spring Tool Suite baseada em Eclipse com o servidor de aplicação Tomcat v8.5.

## Testar Aplicação

Após executar o projeto via IDE, abrir um navegador e acessar a URL http://localhost:8080/POC-PU/, a página inicial mostra as ofertas disponíveis, caso esteja vazia, clicar em "Add Deal(+)" para proceder a inclusão de uma nova oferta.

## Casos de Teste

xx

## Persistência

Como esta aplicação é somente uma prova de conceito, não foi escolhido banco de dados, mas sim a utilização de um pattern Singleton junto com o um Repository para representar a camdada de banco de dados.

## Interfaces

Lista de Ofertas

<p align="left">
  <img src="https://github.com/rjramos70/POC-PU/blob/master/WebContent/images/tela_lista_ofertas.png" title="tela do teste feito localmente para listar as ofertas já cadastradas">
</p>

## Melhorias

Para a evolução da aplicação devemos subistituir a camada de Persistência para serviços RESTFull segregado em um novo projeto, isto visa a melhora na escalabilidade do backend e implementação de novos frontends como uma App Mobile por exemplo.

 

