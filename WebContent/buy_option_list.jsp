
<%@page import="br.com.pu.repository.*"%>
<%@page import="br.com.pu.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Opções</title>


</head>
<body>
<%@ include file="parts/header.jsp" %>  

<%
	DbRepository repo = DbRepository.getInstance();

	List<BuyOption> optionList = repo.getOptionList();

%>


<div class="container">
		<table class="table">
			<tr style="background-color: white;" class="table table-borderless">
				<th scope="col" class="text-right"><a
					href="<%=request.getContextPath()%>/buy_option_cad.jsp"
					style="align-content: flex-end;">Buy Option(+)</a></th>
			</tr>
			<tbody>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col" class="align-middle">ID</th>
							<th scope="col" class="align-middle">Vinculado</th>
							<th scope="col" style="width: 30%;" class="align-middle">Title</th>
							<th scope="col" style="width: 30%;" class="align-middle">Text</th>
							<th scope="col" style="width: 20%;" class="align-middle">Normal Price</th>
							<th scope="col" class="align-middle text-center">Percentage Discount</th>
							<th scope="col" class="align-middle text-center">Preço de Venda</th>
							<th scope="col" class="align-middle text-center">Quantity Cupom</th>
							<th scope="col" class="align-middle">Start Date</th>
							<th scope="col" class="align-middle">End Date</th>
							
						</tr>
					</thead>
					<tbody>
						<%
							if (optionList.size() < 1) {
						%>
						<tr>
							<td colspan="7">Sem Opções de Compra</td>
						</tr>
						<%
							} else {
								for (BuyOption option : optionList) {
									
						%>
						<tr>
							<td scope="row"
								style="font-size: medium; font-size-adjust: inherit;"><%=option.getId()%></td>
							<td scope="row"
								style="font-size: medium; font-size-adjust: inherit;"><%=option.isVinculado()%></td>
							<td scope="row"
								style="font-size: medium; font-size-adjust: inherit;"><%=option.getTitle()%></td>
							<td scope="row"
								style="font-size: small; font-size-adjust: inherit;"><%=option.getText()%></td>
							<td scope="row"
								style="font-size: small; font-size-adjust: inherit;"><%=option.getNormalPrice()%></td>
							<td scope="row"
								style="font-size: small; font-size-adjust: inherit;" class="text-center"><%=option.getPercentageDiscount()%></td>
							<td scope="row"
								style="font-size: small; font-size-adjust: inherit;" class="text-center"><%=option.getSalePrice()%></td>
							<td scope="row"
								style="font-size: small; font-size-adjust: inherit;" class="text-center"><%=option.getQuantityCupom()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=option.getStartDate()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;" class="text-center"><%=option.getEndDate()%></td>
							
								
						</tr>
						
						
						
						
						
						
						<%       } 
							}
						 %>	
							
					</tbody>
					
				</table>
			</tbody>
		</table>
	</div>
	
<script type="text/javascript">
$(document).ready(function() {
	  $('#example .col-xs-1').each(function(i) {
	    var rand = '#'+(Math.random()*0xFFFFFF<<0).toString(16);
	    $(this).css('background', rand);
	  });
	});

</script>
</body>
</html>