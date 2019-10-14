<%-- 
    Document   : offlinepayment
    Created on : Aug 28, 2019, 5:00:31 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>offline payment</title>
    </head>
    <body>
        <h1>cash on delivery payment!</h1>
        <p>please do the payment while the product is delivered</p>
        <form action="userprofile.jsp" method="post">
            <input type="submit" value="Do payment!!">
            
        </form>
    </body>
    <%@include file="footer.jsp" %>
</html>
