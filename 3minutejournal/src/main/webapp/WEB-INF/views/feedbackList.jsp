<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>FeedBack List</title>

</head>
<body>
<section>
		<div class="jumbotron">
			<div class="container">
				<h1>List of Feedbacks</h1>
			</div>
 					<a href="<spring:url value="/feedback/add" />" class="btn btn-primary btn-mini pull-right">Add a new FeedBack</a>	
 
 		</div>
	</section>
	<section class="container">
		<div class="row">
			<c:forEach items="${allFeedBack}" var="feedBack">
				<div class="col-sm-6 col-md-6" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h4>
							
								Subject - <span style="color: blue;">${feedBack.subject}</span> <a
									href="<spring:url value="/feedback/feedbackDetail/${feedBack.id}" />"
									
									class="btn btn-primary  btn-mini  ">View</a>
							</h4>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>