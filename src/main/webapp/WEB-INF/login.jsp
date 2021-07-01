<%--
  Created by IntelliJ IDEA.
  User: juangarcia
  Date: 7/1/21
  Time: 9:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("turbo") && password.equals("password")) {
            session.setAttribute("Name", username);
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title>Title</title>
    <%@include file="../partials/head.jsp"%>
</head>
<body>
<div class="container d-flex h-100">
    <div class="card col-3">
        <div class="card-body">
            <h3 class="card-title">Please Log In</h3>
<form method="POST" action="/WEB-INF/login.jsp">
    <div class="row mb-3">
        <label for="username" class="col-3 col-form-label">Username</label>
        <div class="col-10">
            <input type="text" class="form-control" id="username" name="username">
        </div>
    </div>
    <div class="row mb-3">
        <label for="password" class="col-3 col-form-label">Password</label>
        <div class="col-10">
            <input type="text" class="form-control" id="password" name="password">
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
</form>
            <%@include file="../partials/script.jsp"%>
</body>
</html>
