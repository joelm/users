<%@ include file="common/header.jsp" %>

	<div class="link">
		<h2>Create User</h2>
		<c:if test="${saved == 'success'}">
			<p class="success">User Created Successfully</p>
		</c:if>
		<c:if test="${deleted == 'success'}">
			<p class="success">User Deleted Successfully</p>
		</c:if>
		<c:if test="${status == 'exist'}">
			<p class="error">User Already Exist</p>
		</c:if>
<%--		<form:form modelAttribute="user" action="/rucas-web/create" method="post">
			<form:label path="userName">User Name</form:label><form:input path="userName" />
			<form:label path="firstName">First Name</form:label><form:input path="firstName" />
			<form:label path="lastName">Last Name</form:label><form:input path="lastName" />
			<form:label path="password">Password</form:label><form:password  path="password" />
			<button type="submit" id="save">Save User</button><button type="submit" id="search">Search User</button>
		</form:form>--%>
        <form action="/rucas-web/create" method="post" >
            <input type="text" name="userName"/>
            <input type="email" name="email"/>
            <input type="text" name="firstName"/>
            <input type="password" name="lastName"/>
            <input type="password" name="password"/>
            <button type="submit" id="save">Save User</button><button type="submit" id="search">Search User</button>
        </form>

	</div>

	<c:if test="${search == 'true'}">
	<table>
	<tr>
	<th>User Name</th>
	<th>First Name</th>
	<th>Last Name</th>
	<th colspan="2">Actions</th>
	</tr>
	<c:if test="${empty users}">
	<tr>
		<td colspan="4">No results found!</td>
	</tr>
	</c:if>
	<c:forEach var="current" items="${users}">
		<tr>
		<td>${current.userName}</td>
		<td>${current.firstName}</td>
		<td>${current.lastName}</td>
		<td><a href="/rucas-web/edit/${current.userName}">Edit</a></td>
		<td><a href="/rucas-web/delete/${current.userName}">Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	</c:if>

<script type="text/javascript">

	$(function() {
		$("#save").click(function(event) {
        	$("#user").attr("action", "/rucas-web/create")
			$("#user").submit();
		});

		$("#search").click(function(event) {
        	$("#user").attr("action", "/rucas-web/search")
			$("#user").submit();
		});
	});

</script>

<%@ include file="common/footer.jsp" %>
