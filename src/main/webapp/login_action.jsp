<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<%
String username=request.getParameter("uname");
String password=request.getParameter("psw");
out.println("<h3> Thankyou "+username+"</h3>");
//out.println(password);
%>
</body>
</html>
