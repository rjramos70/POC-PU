
<%@page import="br.com.pu.repository.*"%>
<%@page import="br.com.pu.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Ofertas</title>
<style>
  /* Tooltip */
  .test + .tooltip > .tooltip-inner {
    background-color: #73AD21; 
    color: #FFFFFF; 
    border: 1px solid green; 
    padding: 15px;
    font-size: 20px;
  }
  /* Tooltip on top */
  .test + .tooltip.top > .tooltip-arrow {
    border-top: 5px solid green;
  }
  /* Tooltip on bottom */
  .test + .tooltip.bottom > .tooltip-arrow {
    border-bottom: 5px solid blue;
  }
  /* Tooltip on left */
  .test + .tooltip.left > .tooltip-arrow {
    border-left: 5px solid red;
  }
  /* Tooltip on right */
  .test + .tooltip.right > .tooltip-arrow {
    border-right: 5px solid black;
  }
  </style>


</head>
<body>
<%@ include file="parts/header.jsp" %> 
<%
	DbRepository repo = DbRepository.getInstance();

	Map<String, Deal> dealMap = repo.getDealMap();

	if (dealMap.size() > 0) {
%>
	<br>
	<div class="container"> 
	  <div class="row">
	    <% for (String key : dealMap.keySet()) {
			Deal d = dealMap.get(key);
			Date today = new Date();
			// Verificar se hoje esta entre a data de publicação e data final da Oferta
			if(today.after(d.getPublishDate()) && today.before(d.getEndDate())){
			%>
	    <div class="col-sm"  >
	       <div class="card">
			  <div class="card-header">
			    <h5><%=d.getTitle()%></h5>
			  </div>
			  <div class="card-body">
			   <table class="table table-borderless table-sm">
				  <tbody>
				    <tr>
				      <th scope="row" colspan="2"><h5 class="card-title"><%=d.getText()%></h5></th>
				    </tr>
				    <tr>
				      <td>Melhor Preço  RS <%=d.getBestSalePrice()%></td>
				      <td class="text-right">Total Vendido: <%=d.getTotalSold() %></td>
				    </tr>
				  </tbody>
				</table>			   
			    
			    <div class="card" >
				  <div class="card-header">
				    Escolha sua oferta
				  </div>
				  
				    <%  
				    	List<BuyOption> options = d.getOptions(); 
				    	for(BuyOption opt : options){
				    		Date todayOption = new Date();
							// Verificar se hoje esta entre a data de publicação e data final da Oferta
							if(todayOption.after(opt.getStartDate()) && todayOption.before(opt.getEndDate())){
				    %>
				    <form method="post" action="SaleServlet">
				    <input type="hidden" name="title" value="<%=d.getTitle()%>"> 
				    <input type="hidden" name="idOption" value="<%=opt.getId()%>"> 
				    <div class="container border align-items-start" >
					  <table style="width: 100%;">
						  <tbody >
						  	<tr>
						  		<td>
							  		<table>
							  			<tbody>
								  			<tr>
								  				<th><%=opt.getTitle()%></th>
								  			</tr>
								  			<tr>
								  				<td style="font-size: small;"><%=opt.getText()%></td>
								  			</tr>	
							  			</tbody>
							  		</table>
						  		</td>
						  		<td>
						  			<table>
							  			<tbody>
							  				<th>R$ <%=opt.getSalePrice()%></th>
							  			</tbody>
							  		</table>
						  		</td>
						  		<td class="text-right">
						  			<table>
							  			<tbody>
								  			<tr>
								  				<th><button type="submit" class="btn btn-danger" data-toggle="tooltip" title="Não perca!" data-placement="left" <% if(opt.getQuantityCupom() < 1){ %>disabled <% } %>>Compre</button></th>
								  			</tr>
								  			<tr>
								  				<td style="font-size: x-small;"><%=opt.getQuantityCupom()%> <i>em Estoque</i></td>
								  			</tr>
							  			</tbody>
							  		</table>
						  		</td>
						  	</tr>
						  </tbody>
						</table>
					</div>
					</form>
				
				    <%
							}
						}
				    %>
				
				  
			  </div>
			    
			  </div>
			</div>
	    </div>
	    <% 
			}
		} 
		%>
	  </div>
	</div>
<%
}else{ 
%>
	Sem Ofertas
<%} %>

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip(); 
});
</script> 

</body>
</html>