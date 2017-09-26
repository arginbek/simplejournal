<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<link href="${pageContext.request.contextPath}/resource/css/style.css"
	rel="stylesheet" />


<header id="top">

	<nav id="nav-wrap">

		<a class="mobile-btn" href="#nav-wrap" title="Show navigation">Show
			Menu</a> <a class="mobile-btn" href="#" title="Hide navigation">Hide
			Menu</a>

		<div class="row">

			<ul id="nav" class="nav">
				<li><a href="<spring:url value="/Home"/>">Home</a></li>

				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> Add Event</a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> View Events</a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> Lab </a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> Blog </a></li>
				</security:authorize>

				
				<security:authorize access="isAnonymous()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> Login</a></li>
				</security:authorize>


			</ul>
			<!-- end #nav -->

		</div>

	</nav>
	<!-- end #nav-wrap -->

</header>
<!-- Header End -->




