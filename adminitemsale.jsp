<%-- 
    Document   : adminitemsale
    Created on : Feb 5, 2019, 5:21:55 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <link rel="stylesheet" href="newcss.css"/>
    </head>
    <body>
        <h3 style="color:red">Which Item You want to Sale</h3>
        <!--div class="abc" id="div1"-->
            <!--div class="abc"-->
                <form action="mobile.jsp" method="POST">
                    <input type="submit" value="Mobile Sale" />
                </form>
            <!--/div-->
            <!--div class="abc"-->
                <form action="laptop.jsp" method="POST">
                    <input type="submit" value="Laptop Sale" />
                </form>
            <!--/div-->
            <!--div class="abc"-->
                <form action="cloth.jsp" method="POST">
                    <input type="submit" value="Cloth Sale" />
                </form>
            <!--/div-->
        <!--/div-->
        <form action="adminprofile" method="POST">
            <input type="submit" value="Go to Profile" class="btn"/>
        </form>
        <div style="margin-top: 350px;">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
