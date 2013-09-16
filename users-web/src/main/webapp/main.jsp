<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>

<!doctype html>

<html lang="en" data-framework="backbonejs">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Manage Users</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bower_components/todomvc-common/users.css" />" />
   <%-- <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bower_components/todomvc-common/base.css" />" />--%>
    <script src="<c:url value='/resources/bower_components/todomvc-common/base.js'/>"></script>

</head>

<body>

    <div id="todoapp">

        <header>
            <h1>Users</h1>
            <input id="new-todo" type="text" placeholder="What needs to be done?" autofocus >
        </header>

        <section id="main">
            <input id="toggle-all" type="checkbox">
            <label for="toggle-all">Mark all as complete</label>
            <ul id="todo-list"></ul>
        </section>

        <footer>
            <a id="clear-completed">Clear completed</a>
            <div id="todo-count"></div>
        </footer>

    </section>

    </div>

    <div id="instructions">
        Double-click to edit a todo.
    </div>

<%--<footer id="info">
    <p>Double-click to edit a todo</p>
    <p>Written by <a href="http://joelmahatsri/">Joel Mahatsri</a></p>
</footer>--%>

<script data-main="<c:url value='/resources/js/main'/>" src="<c:url value='/resources/bower_components/requirejs/require.js'/>"></script>

</body>
</html>