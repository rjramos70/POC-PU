<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="br.com.pu.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Opção</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>


<body>
<%@ include file="parts/header.jsp" %>  


<form method="post" action="BuyOptionServlet" class="needs-validation"
			novalidate>
			<div class="row justify-content-center align-items-center"
				style="height: 100vh">
				<div class="col-4">
					<div class="card">
						<div class="card-body">
							<div class="form-group">
								<p class="font-weight-bold">New Buy Option</p>
							</div>
							<div class="form-group">
								<label for="title">Title</label>
								<input type="text" class="form-control" id="title" name="title"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="normalPrice">Normal Price</label>
								<input type="text" class="form-control" id="normalPrice" name="normalPrice"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="salePrice">Sale Price</label>
								<input type="text" class="form-control" id="salePrice" name="salePrice" required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="percentageDiscount">Percentage Discount</label>
								<input type="text" class="form-control" placeholder="00.0" id="percentageDiscount" name="percentageDiscount" onkeydown="calcular()"
								 	 required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="quantityCupom">Quantity Cupom</label>
								<input type="text" class="form-control" id="quantityCupom" name="quantityCupom"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="startDate">Start Date</label>
								<input type="text" class="form-control" id="startDate" name="startDate"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="form-group">
								<label for="endDate">End Date</label>
								<input type="text" class="form-control" id="endDate" name="endDate"
									required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<button type="submit" id="sendBuyOption" class="btn btn-primary">Create</button>
						</div>
					</div>
				</div>
			</div>
		</form>
<script>
function calcular() {
	// alert('Calcular.....');
	var normalPrice = document.getElementById("normalPrice").value;
	var percentageDiscount = document.getElementById("percentageDiscount").value;
	var salePrice = (normalPrice - (normalPrice / percentageDiscount)).toFixed(2);
	// alert('normalPrice : ' + normalPrice + '; percentageDiscount : ' + percentageDiscount + '; salePrice : ' + salePrice)
	document.getElementById("salePrice").value = salePrice;
}
</script>

<script type="text/javascript">
$(document).ready(function(){
	  $('#startDate').mask('00/00/0000');
	  $('#endDate').mask('00/00/0000');
	  $('#percentageDiscount').mask('000.00');
	});

</script>

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