<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="br.com.pu.model.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="parts/header.jsp" %>  

<%
	Type[] tipos = Type.values();

%>
<form method="post" action="DealServlet" class="needs-validation"
			novalidate>
			<div class="row justify-content-center align-items-center"
				style="height: 100vh">
				<div class="col-4">
					<div class="card">
						<div class="card-body">
							<div class="form-group">
								<p class="font-weight-bold">New Deal </p>
							</div>
							<div class="form-group">
								<label for="title">Title</label>
								<input type="text" class="form-control" id="title" name="title"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="text">Text</label>
								<input type="text" class="form-control" id="text" name="text"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="publishDate">Publish Date</label>
								<input type="text" class="form-control" id="publishDate" name="publishDate"
								required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="endDate">End Date</label>
								<input type="text" class="form-control" id="endDate" name="endDate"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
							    <label for="tipo">Type</label>
							    <select class="form-control" id="tipo" name="tipo"required>
							      	<c:forEach var="type" items="${Type.values()}">
									 <option value="${type}">${type}</option>
									</c:forEach>
							      	
			
							    </select>
							 </div>
							<button type="submit" id="sendlogin" class="btn btn-primary">Create</button>
						</div>
					</div>
				</div>
			</div>
		</form>
<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

</body>
</html>