<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type=text/css>
.note {
	text-align: center;
	height: 80px;
	background: -webkit-linear-gradient(left, #0072ff, #8811c5);
	color: #fff;
	font-weight: bold;
	line-height: 80px;
}

.form-content {
	padding: 5%;
	border: 1px solid #ced4da;
	margin-bottom: 2%;
}

.form-control {
	border-radius: 1.5rem;
}

.btnSubmit {
	border: none;
	border-radius: 1.5rem;
	padding: 1%;
	width: 20%;
	cursor: pointer;
	background: #0062cc;
	color: #fff;
}

.errorColor {
	color: red;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Registration</title>
</head>
<body>
	<br>
	<br>

	<div class="container register-form">
		<form:form method="GET" action="stockInsert"
			modelAttribute="stockRegister">
			<div class="note">
				<p>Stock Registration Form</p>
			</div>

			<div class="form-content">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<b>Enter the Stock Name</b>
							<form:input type="text" class="form-control"
								path="stockExchangeName" id="stockExchangeName"
								placeholder="Stock Name *" />
							<form:errors path="stockExchangeName" class="errorColor" />
						</div>
						<div class="form-group">
							<b>Brief</b>
							<form:input type="text" class="form-control" path="brief"
								id="brief" placeholder="brief *" />
							<form:errors path="brief" class="errorColor" />
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<b>Contact Address</b>
							<form:input type="text" class="form-control"
								path="contactAddress" id="contactAddress"
								placeholder="Contact Address*" />
							<form:errors path="contactAddress" class="errorColor" />
						</div>
						<div class="form-group">
							<b>Remarks</b>
							<form:input type="text" class="form-control" path="remarks"
								id="remarks" placeholder="Remarks*" />
							<form:errors path="remarks" class="errorColor" />
						</div>
					</div>
				</div>
				<button type="submit" class="btnSubmit">Submit</button>
			</div>

		</form:form>
	</div>



</body>
</html>