<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

	<title>Insert title here</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<!--  
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	-->
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>	


</head>
<body>

<!--Main Navigation-->
<header>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="deal_list.jsp">POC-PU</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarOferta" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Oferta
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarOferta">
          <!--  <a class="dropdown-item" href="deal_cad.jsp">Cadastro</a> -->
          <a class="dropdown-item" href="deal_list.jsp">Lista Ofertas</a>
          <!-- 
          <a class="dropdown-item" href="vincular_opcoes.jsp">Vincular Opções de Compra</a> 
          
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
           -->
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarOpcaoCompra" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Opção de Compra
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarOpcaoCompra">
          <a class="dropdown-item" href="<%=request.getContextPath()%>/buy_option_cad.jsp">Cadastro</a>
          <a class="dropdown-item" href="buy_option_list.jsp">Listar Opções</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarOpcaoCompra" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Vendas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarOpcaoCompra">
          <a class="dropdown-item" href="sale_list.jsp">Listar Opções para Venda</a>
        </div>
      </li>
      <!-- 
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
       -->
    </ul>
    
    <!-- 
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
     -->
  </div>
</nav>

</header>
<!--Main Navigation-->

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>

</body>
</html>