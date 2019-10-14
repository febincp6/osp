<%-- 
    Document   : onlinepayment
    Created on : Jun 15, 2019, 1:51:11 PM
    Author     : lenovo
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>onlinepayment</title>
    </head>
    <body>
        <h1>online payment</h1>
        <ol style="color:black;">
            <li>Select Bank</li>
            <li>process the transaction</li>
            <li>confirm the payment by OTP</li>
            <li>print the slip</li>
          </ol>
        <form action="purchase2.jsp">
            <input type="submit" value="Do payment!!" />
        </form>
            <% String idno=(String)session.getAttribute("id");
            session.setAttribute("id", idno);
            %>
        
    </body>
</html>
