<%--
  Created by IntelliJ IDEA.
  User: juangarcia
  Date: 6/30/21
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- this <% %> tags will help us wright java code --%>
<%
    int localCount = 1;
    int localcount = 1;
    instanceCount += 1;
%>
<%-- this <%! %> tags will help us declare variables (making them instance variables) --%>
<%! int instanceCount = 0; %>
<%-- this <%= %> tags will help us evaluate our variables in our js code --%>

<html>
<head>

    <title>JSP Tags</title>
</head>
<body>
<h1>Hello, World!</h1>
<h2><%= localCount %></h2>
<h2><%= instanceCount %></h2>
<%@include file="partials/national-parks.jsp"%>
</body>
</html>
