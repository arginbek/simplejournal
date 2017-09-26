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
				<li>Language : <a href="?language=mn_MN">Mongolian</a>|<a href="?language=en_US">English</a></li>
				<li><a href="<spring:url value="/Home"/>"><spring:message code="menu.home"/></a></li>

				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> <spring:message code="menu.event.add"/></a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> <spring:message code="menu.events.view"/></a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> <spring:message code="menu.lab"/> </a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> <spring:message code="menu.blog"/> </a></li>
				</security:authorize>

				
				<security:authorize access="isAnonymous()">
					<li><a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> <spring:message code="menu.login"/></a></li>
				</security:authorize>


			</ul>
			<!-- end #nav -->

		</div>

	</nav>
	<!-- end #nav-wrap -->

</header>
<!-- Header End -->



