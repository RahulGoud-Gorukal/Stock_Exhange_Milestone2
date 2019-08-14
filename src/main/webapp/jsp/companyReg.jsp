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
  
.errorColor
{
color:red;
}
</style>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Registration</title>
</head>
<body>
	<br>
	<br>

	<div class="container register-form">
		<form:form method="GET" action="/registerCompany" modelAttribute="company">
			<div class="note">
				<p>Company Registration Form</p>
			</div>

			<div class="form-content">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<b>Enter the Company Name</b>
							<form:input type="text" class="form-control" path="companyName"
								id="companyName" placeholder="Company Name *" />
								<form:errors path="companyName" class="errorColor"/>
						</div>
						<div class="form-group">
							<b>Enter CEO</b>
							<form:input type="text" class="form-control" path="ceo" id="ceo"
								placeholder="CEO *" />
								<form:errors path="ceo" class="errorColor"/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<b>Enter board of directors</b>
							<form:input type="text" class="form-control"
								path="boardOfDirectors" id="boardOfDirectors"
								placeholder=" Board of Directors *" />
								<form:errors path="boardOfDirectors" class="errorColor"/>
						</div>
						<div class="form-group">
							<b>Enter the turnover</b>
							<form:input type="text" class="form-control" path="turnover"
								id="turnover" placeholder="Turnover *" />
								<form:errors path="turnover" class="errorColor"/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<b>Brief Writeup</b>
							<form:input type="text" class="form-control" path="briefWriteup"
								id="briefWriteup" placeholder=" Brief Writeup *" />
								<form:errors path="briefWriteup" class="errorColor"/>
						</div>

					</div>

				</div>
				<button type="submit" class="btnSubmit">Submit</button>
			</div>
	</div>
	</form:form>
	</div>



</body>
</html>