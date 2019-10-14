<%-- 
    Document   : market
    Created on : Jul 20, 2019, 3:13:14 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome</title>
        <style>
            #div1{
                border: 2px solid yellow;
                margin-left: 100px;
                border-radius: 30px 30px 30px 30px;
            }
            .heading{
                border:3px solid border;
                width:700px;
                height:250px;
                background-image: url("pic1.jpg");
                background-repeat: no-repeat;
                color:red;
                border-radius:50px 50px 50px 50px;
            }
            .tbl{
                border-radius:34px 0px 34px 0px;
                width:700px;
                font-size:x-large;
                color:red;
                background-position: right;
                color:red;
            }
            .abc{
                display:inline-block;
            }
            .btnp
            {
                border:2px solid;
                border-radius:12px 0px 12px 0px;
            }
            </style>
    </head>
    <body>
        <h3>which item u want to sale</h3>
        <div class="abc">
            <div class="abc">
                <form method="post" action="mobile.jsp">
                    <input type="submit" value="mobile sale"  class="btn"/>
                </form>
            </div>
            <div class="abc">
                <form method="post" action="laptop.jsp">
                    <input type="submit" value="laptop sale" class="btn" />
                </form>
            </div>
            <div class="abc">
                <form method="post" action="cloths.jsp">
                    <input type="submit" value="Cloths Sale"  class="btn"/>
                </form>
            </div>
            <form method="post" action="adminprofile.jsp">
                <input type="submit" value="Go to profile" class="btn"/>
            </form>
        </div>
    </body>
    <%@include file="footer.jsp"%>
           
</html>
