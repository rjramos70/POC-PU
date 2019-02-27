<%@page import="br.com.pu.repository.*"%>
<%@page import="br.com.pu.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vincula Opções</title>
<style>
.deal{
  position: relative;
  top: 20px;
  left: 20px;
  width: 300px;
  height: 100%;
  margin: 10px;
  padding: 10px;
  border: 1px solid black;
}

.deal-inner{
  border: 1px solid red; 
  height: 300px; 
  width: 100%; 
  background-color: #F6F5F4;
}
.receive{
  width: 100%;
  height: 50%;
  margin: 1px;
  padding: 1px;
  border: 1px solid black;
}

.option{
  position: relative;
  top: 50px;
  left: 350px;
  width: 400px;
  height: 400px;
  margin: 1px;
  padding: 1px;
  border: 1px solid black;
}

.option-inner{
  align-items: center;
  width: 82%;
  margin: 1px;
  padding: 1px;
  border: 1px solid black;
  
}

.container2 {
  position: relative;
  top: 20px;
  background: lightgray;
}
.box-orange {
  position: absolute;
  background: orange;
  height: 300px;
  width: 250px;
  right: 5px;    
}
.box-blue {
  background: lightskyblue;
  position: static;   
  height: 300px;
  width: 250px;
}

#div1, #div2 {
  position: relative;
  width: 100%;
  height: 100%;
  margin: 10px;
  padding: 10px;
  border: 1px solid black;
}

</style>


<script>
function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}
</script>


</head>
<body>
<%@ include file="parts/header.jsp" %>  

<%
	DbRepository repo = DbRepository.getInstance();

	List<BuyOption> optionList = repo.getOptionList();
	Map<String, Deal> dealMap = repo.getDealMap();
	
	String title = request.getParameter("title");
	Deal deal = dealMap.get(title);
%>
<div class="container">
	<table class="table table-borderless" style="border: 0px solid black;">
	  <thead>
	    <tr>
	      <th scope="col">Oferta</th>
	      <th scope="col"><div class="row justify-content-between">Opções de Compra 
						  <a href="<%=request.getContextPath()%>/buy_option_cad.jsp"
					style="align-content: flex-end;">Add Buy Option(+)</a></div></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th>
			<form method="post" action="VinculaOpcoesServlet">
		      <input type="hidden" name="title" value="<%=deal.getTitle()%>">
		      <input type="hidden" name="action" value="desvincular">
			<div class="card" style="width: 22rem;">
			  <div class="card-header">
			    <%=deal.getTitle()%>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><%=deal.getText()%></h5>
			    <p class="card-text">Tipo: <%=deal.getType()%></p>
			    <%
			    if(deal.getOptions().size() > 0){
			    %>
			    <div class="card" style="width: 18rem;">
				  <div class="card-header">
				    Opções de Compra
				  </div>
				  <div class="card-body">
				    <%
				    	for(BuyOption option: deal.getOptions()){
				    
				    %>
				    <div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <div class="input-group-text">
					    	<input type="checkbox" name="ipOpcaoDesvincular" value="<%=option.getId()%>" <%if(option.isVinculado()){%> checked <%} %>/>
					    </div>
					  </div>
					  <input type="text" class="form-control" aria-label="Text input with checkbox" value="<%=option.getTitle()%>" readonly="true">
					</div>
					<%
				    	}
					%>
				  </div>
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Desvincular</button>
			  </div>
			  <%
			  }
			  %>
			</div>
		</form>
		  </th>
	      <td>
	      <form method="post" action="VinculaOpcoesServlet">
	      <input type="hidden" name="title" value="<%=deal.getTitle()%>">
	      <input type="hidden" name="action" value="vincular">
			<% 
			if (optionList.size() > 0) { 
				int count = 0;
				for (BuyOption option : optionList) {
					if(!option.isVinculado()){
						count++;
			%>
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <div class="input-group-text">
			    	<input type="checkbox" name="ipOpcaoVincular" value="<%=option.getId()%>"  <% if(option.isVinculado()){ %> checked <% } %>/>
			    </div>
			  </div>
			  <input type="text" class="form-control" aria-label="Text input with checkbox" value="<%=option.getTitle()%>" readonly="true">
			</div>
			<%
					}
				}
				if(count != 0){ %>  
			  		<button type="submit" class="btn btn-primary">Vincular</button>
			<%  } %>
		   </form>
			<%
			}else{
			%> 
				Sem Opções
			<%
			}
			%>
		  </td>
	    </tr>
	  </tbody>
	</table>
</div>

</body>
</html>