<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
		</div>


	</section>

	<section class="container">
		<div class="row">
			<div class="col-sm-6 col-md-6" style="padding-bottom: 15px">
				<div class="thumbnail">
					<div class="caption">

						<h3>
							First Name - <span style="color: blue;">${member.firstName}</span>
						</h3>
						<h3>
							Last Name - <span style="color: blue;">${member.lastName}</span>
						</h3>
						<h3>
							Email - <span style="color: blue;">${member.email}</span>
						</h3>
						<h3>
							User Name - <span style="color: blue;">
								${member.userCredentials.username}</span>
						</h3>
						<a href="<spring:url value="/registers/editUser/${member.id}" />" class="btn btn-primary  btn-mini  ">Edit</a>
						<a href="<spring:url value="/registers/deleteUser/${member.id}" />" class="btn btn-danger btn-mini  ">Delete</a>
					</div>
				</div>
			</div>

		</div>
	</section>
</body>
</html>
