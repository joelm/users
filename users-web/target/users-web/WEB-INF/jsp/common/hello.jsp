<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
	<h3>Message : ${message}</h3>	
	<h3>Hi : ${username}</h3> <a href="<c:url value="/differentUser" />" > Not ${username}?</a>
	
	<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
	
</div>