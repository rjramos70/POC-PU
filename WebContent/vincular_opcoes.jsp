<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="br.com.pu.repository.*"%>
<%@page import="br.com.pu.model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vincula Opções</title>
<style>
.card{
  float: left;
  width: 300px;
  height: 350px;
  margin: 10px;
  padding: 10px;
  border: 1px solid black;
}

.receive{
  float: left;
  width: 100%;
  height: 50%;
  margin: 2px;
  padding: 2px;
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

%>


<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" class="card">
  <% 
  if (optionList.size() > 0) {
	  %>
	  <div class="card" style="width: 18rem;">
  		<ul class="list-group list-group-flush">
	  <%
	  for (BuyOption option : optionList) {
  %>
  	<li class="list-group-item"  draggable="true" ondragstart="drag(event)" id="<%=option.getId()%>" class="card"><%=option.getTitle()%></li>
  <%
	  }
	  %>
		</ul>
	 </div>
	  <%
  }else{
	  %>Sem Opções<%
  }
  %>

</div>
<%
	if (dealMap.size() < 1) {
%>
Sem Ofertas
<%
	}else{
		for (String key : dealMap.keySet()) {
			Deal d = dealMap.get(key);
%>
	
	
	<div class="card" style="width: 18rem;">
	  <div class="card-body">
	    <h5 class="card-title"><%=d.getTitle()%></h5>
	    <p class="card-text"><%=d.getText()%></p>
	    <div id="<%=d.getTitle()%>" ondrop="drop(event)" ondragover="allowDrop(event)" class="receive"></div>
	  </div>
	</div>

<%
		} 		
	}
%>
<br>

</body>
</html>