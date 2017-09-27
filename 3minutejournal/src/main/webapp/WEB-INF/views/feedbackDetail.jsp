<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Members</title>
</head>
<body>
	<section>
	<div class="jumbotron">
		
		<a href="<spring:url value="/feedback/add" />" class="btn btn-primary btn-mini pull-right">Add a new FeedBack</a> 
		<spring:url value="/logout" var="logout_url" />
		<form:form action="${logout_url}" class="form-horizontal"
			method="POST">
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<input type="submit" id="btnAdd"
						class="btn btn-danger btn-mini  pull-right" value="Logout" />
				</div>
			</div>
		</form:form>

	</section>

	<section class="container">
	<div class="row">
		<div class="col-sm-6 col-md-9" style="padding-bottom: 15px">
			<div class="thumbnail">
				<div class="caption">
				
					<h3>subject - ${feedbackDetail.subject}</h3>
					<h3>Message - ${feedbackDetail.message}</h3>
					<p><a href="<spring:url value="/feedback/editFeedback/${feedbackDetail.id}" />" class="btn btn-primary btn-mini pull-left">Edit feedBack</a></p>
					<p><a href="<spring:url value="/feedback/deleteFeedback/${feedbackDetail.id}" />" class="btn btn-danger btn-mini">Delete feedBack</a></p>	
						
				</div>
			</div>
		</div>

	</div>
	</section>
</body>
</html>
