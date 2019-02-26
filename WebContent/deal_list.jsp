
<%@page import="br.com.pu.repository.*"%>
<%@page import="br.com.pu.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Ofertas</title>
</head>
<body>
<%@ include file="parts/header.jsp" %>  

<%
	DbRepository repo = DbRepository.getInstance();

	Map<String, Deal> dealMap = repo.getDealMap();

%>

	<div class="container">
		<table class="table">
			<tr style="background-color: white;" class="table table-borderless">
				<th scope="col" class="text-right"><a
					href="<%=request.getContextPath()%>/deal_cad.jsp"
					style="align-content: flex-end;">Add Deal(+)</a></th>
			</tr>
			<tbody>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col" class="align-middle" style="width: 30%;">Title</th>
							<th scope="col" class="align-middle" style="width: 20%;">Text</th>
							<th scope="col" class="align-middle">Created</th>
							<th scope="col" class="align-middle">Publish</th>
							<th scope="col" class="align-middle">End</th>
							<th scope="col" class="align-middle">Url</th>
							<th scope="col" class="align-middle">Sold</th>
							<th scope="col" class="align-middle">Type</th>
							<th scope="col" class="align-middle">Qtd. Vinculados</th>
							<th scope="col" class="align-middle">Vincular</th>
						</tr>
					</thead>
					<tbody>
						<%
							if (dealMap.size() < 1) {
						%>
						<tr>
							<td colspan="8">Sem Ofertas</td>
						</tr>
						<%
							} else {
								for (String key : dealMap.keySet()) {
									Deal d = dealMap.get(key);
						%>
						<tr>
							<td scope="col"style="font-size: small; font-size-adjust: inherit;" class="align-middle"><%=d.getTitle()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=d.getText()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=d.getCreateDate()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=d.getPublishDate()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=d.getEndDate()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=d.getUrl()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;" class="text-center"><%=d.getTotalSold()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"><%=d.getType()%></td>
							<td scope="row"
								style="font-size: x-small; font-size-adjust: inherit;"  class="text-center"><%=d.getQtdOpcoesVinculadas()%></td>
							<td scope="row" style="font-size: x-small; font-size-adjust: inherit;" class="text-center">
								<form method="post"
									action="<%=request.getContextPath()%>/vincular_opcoes.jsp">
									<input type="hidden" id="title" name="title" value="<%=d.getTitle()%>"> 
									<button type="submit">
										<img src="<%=request.getContextPath()%>/images/attach-option-24x24.png"
											class="rounded" alt="Vai para a tela onde devemos vincular as opções de compra." style="border: none;">
									</button>
								</form>
							</td>
						</tr>
						<%       } 
							}
						 %>	
							
					</tbody>
					
				</table>
			</tbody>
		</table>
	</div>



</body>
</html>