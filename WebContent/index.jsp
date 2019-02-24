<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="br.com.pu.repository.*"%>
<%@page import="br.com.pu.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="parts/header.jsp" %>  

<%
	DbRepository repo = DbRepository.getInstance();

	Map<String, Deal> dealMap = repo.dealMap;

%>

	<div class="container">
		<table class="table">
			<tr style="background-color: white;" class="table table-borderless">
				<th scope="col" class="text-right"><a
					href="<%=request.getContextPath()%>/cad_deal.jsp"
					style="align-content: flex-end;">Add Deal(+)</a></th>
			</tr>
			<tbody>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col" style="width: 30%;">Title</th>
							<th scope="col" style="width: 20%;">Text</th>
							<th scope="col">Created</th>
							<th scope="col">Publish</th>
							<th scope="col">End</th>
							<th scope="col">Url</th>
							<th scope="col">Sold</th>
							<th scope="col">Type</th>
						</tr>
					</thead>
					<tbody>
						<%
							if (dealMap.size() < 1) {
						%>
						<tr>
							<td colspan="5">No deals</td>
						</tr>
						<%
							} else {
								for (String key : dealMap.keySet()) {
									Deal d = dealMap.get(key);
						%>
						<tr>
							<td scope="row"
								style="font-size: small; font-size-adjust: inherit;"><%=d.getTitle()%></td>
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