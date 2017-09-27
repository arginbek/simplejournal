<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				Add a new feedback
			</div>
		</div>
	</section>
	<section class="container">
		
		<form:form modelAttribute="newfeedback" class="form-horizontal">
			<fieldset>
			<form:hidden path="id" />
				<form:errors path="*" cssClass="alert alert-danger" element="div" />
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="subject">
						Subject</label>
					<div class="col-lg-10">
						<form:input id="subject" path="subject" type="text"
							class="form:input-large" />
						<form:errors path="subject" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="message">Feedback</label>
					<div class="col-lg-10">
						<form:textarea rows="10" cols="30" id="message" path="message"
							type="text" class="form:input-large" />
						<form:errors path="message" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="userName">UserName</label>
					<div class="col-lg-10">
						<form:input id="userName" path="userName" type="text"
							class="form:input-large" />
						<form:errors path="userName" cssClass="text-danger" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Send" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
</body>
</html>
