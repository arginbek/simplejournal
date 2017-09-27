<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

<link href="${pageContext.request.contextPath}/resource/css/style.css"/>

</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
					<a
					href="<spring:url value="/registers" />"
					class="btn btn-primary btn-mini pull-right">List Of Users</a>
					<a
					href="<spring:url value="/feedback/feedbackList" />"
					class="btn btn-primary btn-mini pull-right">List Of FeedBacks</a>
			</div>

			<div class="container"></div>
		</div>
	</section>

</body>
</html>
