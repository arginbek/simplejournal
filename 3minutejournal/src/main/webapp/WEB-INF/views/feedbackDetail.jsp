<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<title>Feedback Detail</title>
</head>
<body>


<%-- 	<section class="container">
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
	
	<a href="<spring:url value="/feedback/add" />" class="btn btn-primary btn-mini pull-right">Add a new FeedBack</a>  --%>
	
	
		<div id="content-wrap">
		<div id="centerTable">

			<table id="box-table-a" summary="Employee Pay Sheet">
				<thead>
					<tr>
						<th scope="col">Subject</th>
						<th scope="col">Message</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<tr>
							<td>${feedbackDetail.subject}</td>
							<td>${feedbackDetail.message}</td>
							<td><spring:url value="/feedback/editFeedback/${feedbackDetail.id}" var="feedbackedit"/>
							<a class="edit" href="${feedbackedit}">Edit</a></td>
							<td><spring:url value="/feedback/deleteFeedback/${feedbackDetail.id}" var="feedbackdelete"/>
							<a class="edit" href="${feedbackdelete}">Edit</a></td>
						</tr>
				</tbody>
			</table>
			<a href="<spring:url value="/feedback/add" />">Add a new FeedBack</a>
		</div>

	</div>
</body>
</html>


	