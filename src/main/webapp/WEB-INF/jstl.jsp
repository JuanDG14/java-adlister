<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: juangarcia
  Date: 6/30/21
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("lactoseIntolerant", false);

    List<String> dairyProducts = new ArrayList<>();
    dairyProducts.add("milk");
    dairyProducts.add("cheese");
    dairyProducts.add("yogurt");
    dairyProducts.add("ice cream");
    dairyProducts.add("cottage cheese");
    dairyProducts.add("butter");

//    jsp to value of instance of dairyProducts arraylist
    request.setAttribute("dairyProducts", dairyProducts);

    boolean textIsBlue = true;
    request.setAttribute("blue", textIsBlue);
%>


<html>
<head>
    <title>JSPs: JSTL
    </title>
</head>
<body>
<h1>Hello!</h1>

<%--what kind of functionality we are going to be using.--%>
<c:choose>
    <%--    when this is true, output whats within the tags.--%>
    <c:when test="${lactoseIntolerant}">
        <h1>You are lactose intolerant. Please do not buy dairy products.</h1>
    </c:when>
    <c:when test="${blue}">
        <p>Blue text</p>
    </c:when>
    <%--    otherwise acts as our else--%>
    <c:otherwise>
        <h3>Dairy Products List</h3>
        <%--        foreach loop with jstl--%>
        <c:forEach items="${dairyProducts}" var="diaryProduct">
            <div>
                <p>${diaryProduct}</p>
            </div>
        </c:forEach>
    </c:otherwise>
</c:choose>



</body>
</html>
