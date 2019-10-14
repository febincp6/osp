<%-- 
    Document   : logout
    Created on : Oct 19, 2018, 9:43:03 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%
	session.removeAttribute("user");
	session.removeAttribute("type");
	session.invalidate();
	response.sendRedirect("index_1.html");
%>
</body>
</html>