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
            response.sendRedirect("profile.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
%>
<html>
<head>
    <title>Log In</title>
    <%@include file="partials/head.jsp"%>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<div class="container d-flex">
    <div class="card">
        <div class="card-body">
            <h3 class="card-title">Please Log In Below.</h3>
<form method="POST" action="/login.jsp">
    <div class="row">
        <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="please enter username">
    </div>
    <div class="row">
        <label for="password">Password</label>
            <input type="text" id="password" name="password" placeholder="please enter password">
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
</form>
            <%@include file="partials/script.jsp"%>
</body>
</html>
