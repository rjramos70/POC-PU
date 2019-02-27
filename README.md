# POC-PU

Projeto de prova de conceito de uma plataforma web de vantagens simplificada do qual conta com a publicação de ofertas e suas respectivas opções de compra. 

## Instalar

	1. Baixe o projeto via Github do endereço "https://github.com/rjramos70/POC-PU" e salve dentro da workspace de sua preferência;
	2. Importe o projeto dentro da IDE de sua preferência, este projeto foi desenvolvido com Spring Tool Suite Spring Tool Suite Version: 3.9.4.RELEASE com servidor de aplicação web Tomcat v8.5 e sistema operacional MacOS Mojave. 	

## Executar

Clique com o botão direto do mouse sobre o nome do projeto, depois RUN AS, e depois Run on Server, nesta implementação foi utilizado a IDE Spring Tool Suite baseada em Eclipse com o servidor de aplicação Tomcat v8.5.

## Testar Aplicação

Após executar o projeto via IDE, abrir um navegador e acessar a URL http://localhost:8080/POC-PU/. Para testarmos a aplicação devemos seguir uma sequencia lógica, pois primeiro cadastramos as Ofertas, depois cadastramos as Opções de Compra, depois podemos vincular as Opções de Compra a sua respectiva Oferta, e ao final podemos executar uma Venda de uma Oferta.

1. Para cadastrar a Oferta, a aplicação já carregará como default a página inicial que mostra as ofertas disponíveis, inicialmente não temos Oferta algum, para isso iremos inserir uma nova Oferta clicando em "Add Deal(+)":

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_ofertas_disponiveis.png" width="80%" height="80%">
</p>

Ao clicar em para incluir, o formulário de cadastro de Oferta será aberto:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_formulario_cadastro_oferta.png" width="80%" height="80%">
</p>

Após preenchimento do Formulário de cadastro de Oferta, clicar no botão cadastrar:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_formulario_cadastro_oferta_preenchido.png" width="80%" height="80%">
</p>

Automaticamente será redirecionado para a tela que lista as Ofertas disponíveis, só que agora com uma Oferta sendo mostrada:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_ofertas_disponiveis_preenchida.png" width="80%" height="80%">
</p>


2. Para cadastarmos uma novas Opções de Compra, podemos acessar via menu (Opção de Compra > Cadastro) o formulário de cadastro diretamento:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_formulario_cadastro_de_opcao_de_compra.png" width="80%" height="80%">
</p>

Ou via listagem das Opções de Compra (Opção de Compra > Listar Opções):

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_opcoes_de_compra.png" width="80%" height="80%">
</p>

Ao clicarmos em "Buy Option(+)" seremos redirecionados para o mesmo formulário (Opção de Compra > Cadastro) mostrado logo acima, precisamos preencher todos os campos, pois são obrigatórios, ao preencher o campo "% Discount, automaticamente o campo "Sale Price"será preenchido com o valor calculado, atendendo a um dos requisitos do cliente, e depois clicar no botão "Cadastrar":

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_formulario_cadastro_de_opcao_de_compra_preenchido.png" width="80%" height="80%">
</p>

Automaticamente o usuário será direcionado para a tela que lista todas as opções de compra disponíveis, iremos cadastrar mais duas opções, sendo uma delas com data de publicação mais que a data do teste, neste caso dia 27/02/2019:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_opcoes_de_compra_preenchida.png" width="80%" height="80%">
</p>

Atenção a data inicial de publicação (Start Date) da Opção de Compra com ID 4 (Kit 3 Frigideiras - 20, 24 e 28 cm), pois elá só será mostrada entre 28/02/2019 e 01/03/2019 conforme requisito demandado pelo cliente.

3. Agora iremos fazer o vinculo das Opções de Compra com sua respectiva Oferta, para isso precisamos acessar a tela onde lista todas as Ofertas disponíveis em Oferta > Lista Ofertas:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_ofertas_disponiveis_preenchida.png" width="80%" height="80%">
</p>

Escolher a Oferta desejada e clicar no respectivo botão "Vincula" a direta da linha, automaticamente o usuário será direcionado para a tela onde a esquerda temos a respectiva Oferta, e a direita uma lista de Opções de Compras disponíveis, como a relação é que cada Opção de Compra pertença unica e esclisivamente a uma Oferta, ao vincularmos a mesma, esta não mas estará disponível para outra oferta, atendendo ao requisito de vincular Opção de Compra a Oferta. Seleciona cada Opção de Compra que deseje vincular e clique no botão "Vincular":

 
<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_vincula_opcao_de_compra.png" width="80%" height="80%">
</p>

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_vincula_opcao_de_compra_escolhida.png" width="80%" height="80%">
</p>

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_vincula_opcao_de_compra_escolhida_vinculada.png" width="80%" height="80%">
</p>t
Para desvincular alguma das opções basta desmarcar a esquerda e clicar no botão "Desvincular", automaticamente será mostrado na coluna a direita como disponível a ser vinculada em outra Oferta:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_vincula_opcao_de_compra_escolhida_desvinculada.png" width="80%" height="80%">
</p>

Para nosso teste iremos vincular as 4 opções. Ao retornarmos a tela onde lista as Ofertas (Oferta > Lista Ofertas), podemos ver na coluna "Qtd. Vinculadas" esta como 4, confirmando os vinculos que fizermos. Outro ponto que podemos ver é o campo "Url", que atendendo a outro requisito, foi gerado o Slug único para esta Oferta:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_ofertas_disponiveis_preenchida_e_vinculadas.png" width="80%" height="80%">
</p>


4. Agora iremos fazer uma simulação de uma comprar, para isso iremos navegar por Vendas > Listar Opções para Venda, veja que será mostrada uma tela com as Ofertas disponíveis, lembrando que a Oferta "Frigideira de Alumínio com Revestimento Cerâmico de 20cm, 24cm ou 28cm com Kit com 3. Em até 12x!" tem sua publicação iniciando dia 22/02/2019 até 01/03/2019. E dentre as opções de ofertas, não esta sendo mostrado a oferta de ID 4 que é "Kit 3 Frigideiras - 20, 24 e 28 cm"que só estará disponível a partir do dia 28/02/2019, assim atendendo a mais um dos requisitos do cliente:
m<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_opcoes_de_venda_preenchida.png" width="80%" height="80%">
</p>

Veja que em cada opção esta sendo mostrado o titulo, descrição, melhor preço dentre as opções e quantidade total vendida desta Oferta, e também a lista das opções de compra, onde mostra cada respectiva quantidade em estoque de cada opção, ao clicarmos no respectivo botão de compra, podemos ver que esta sendo decrementado a quantidade em estoque e incrementado o Total Vendido:

<p align="left">
  <img src="https://raw.githubusercontent.com/rjramos70/POC-PU/master/WebContent/images/tela_lista_opcoes_de_venda_preenchida_e_vendida.png" width="80%" height="80%">
</p> 

## Casos de Teste


Devido ao curto espaço de tempo, somente foi feito uma classe de teste usando JUnit (DealServiceTest.java) que se encontra dentro do caminho test > br > com > pu > service, esta sendo proposto no tópico "melhorias" a implementação de mais casos de teste unitários e integrados.

## Persistência

Como esta aplicação é somente uma prova de conceito, não foi escolhido banco de dados, mas sim a utilização de um pattern Singleton junto com o um Repository para representar a camdada de banco de dados.

## Status dos Requisitos

Como esta aplicação é somente uma prova de conceito, não foi escolhido banco de dados, mas sim a utilização de um pattern Singleton junto com o um Repository para representar a camdada de banco de dados.

	1. Modelagem e persistência de dados. [ Atendidos por meio de repositório Singleton ]
	2. Interface gráfica para inserir uma oferta. [ Atendidos ]
	3. Interface gráfica para inserir uma opção de compra. [ Atendidos ]
	4. Interface gráfica para associar as opções de compra na oferta selecionada. [ Atendidos ]
	5. Exibição de uma oferta e suas opções de compra. [ Atendidos ]
	6. Processar a "venda" de uma determinada opção de compra e realizar a atualização dos itens vendidos e seus totais. [ Atendidos em fluxo resumido]
	7. Para ser uma oferta válida, ou seja, que esteja publicada no website ela respeita a data de publicação (publishDate) que é quando a oferta entra efetivamente no ar e futuramente não é mais exibida quando atinge a data de saída (endDate).  [ Atendidos ]
	8. É realizado um controle global de quantos itens já foram vendidos de determinada oferta pelo campo "totalSold".   [ Atendidos - visto na tela de Venda]
	9. Para cada oferta cadastrada geramos um link (url) baseado em seu nome, que representa o slug para acessar a mesma dentro do website, esse slug é único.   [ Atendidos - visto na tela de listagem de ofertas cadastradas]
	10. Assim como a oferta, toda opção de compra tem uma data de publicação (startDate) e data de retirada do ar (endDate).  [ Atendidos ]
	11. Quando realizamos o cadastro de uma opção de compra, informamos o valor de mercado praticado (normalPrice), o percentual de desconto (caso se aplique, percentageDiscount) e consequentemente já armazenando o valor de venda (salePrice) para o usuário.  [ Atendidos ]
	12. Inicialmente cada opção de compra tem uma determinada "quantidade de estoque" (quantityCupom), exemplo: OP-1 tem 100 cupons disponíveis, OP-2 tem 30 cupons disponíveis; ao realizar "a venda" através de uma opção de compra, realizamos o decremento da quantidade de cupons da opção selecionada e incrementamos a quantidade global vendida na oferta. [ Atendidos ]
	13. Uma opção de compra pode se esgotar e estar indisponível para a compra, mas a oferta pode permanecer no ar com outras opção de compra válidas e com "estoque disponível". Caso todas as opções de compra se esgotem, a oferta é totalmente esgotada e desabilitada para a compra. [ Atendidos ]
	14. Quando uma opção de compra se esgota, seu botão de compra é desabilitado. [ Atendidos ]

## Melhorias

Para a evolução da aplicação devemos:

	1. Subistituir a camada de Persistência para serviços RESTFull segregado em um novo projeto, visando a melhora a escalabilidade do backend.
	2. Implementação de mais testes, unitários e integrados.
	3. Implementação de novos frontends a partir da refatoração do backend sendo transformado em microserviços ou APIs.
	4. Melhorias nas interfaces por parte de uma equipe de UX/UI.
	5. Mais user test para identificar falhas e melhorias.


