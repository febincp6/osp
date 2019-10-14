<%-- 
    Document   : mobilemarket
    Created on : Mar 19, 2019, 3:17:27 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile Market</title>
        <style>
            .tb1{
                border:1px solid black;
                width:100%;
                font-size:20px;
                color:black;
                background-position:right;
            }
            .tbl1{
                border:4px solid black;
                width:700px;
                font-size:x-large;
                color:black;
                background-position:right;
            }
            body{
            
                width:98%;
                height:600px;
                
                background-repeat:round;
            }
            .tbl2
            {
               border:1px solid black;
                width:100%;
                font-size:20px;
                color:black;
                background-position:right; 
            }
        </style>
        <script>
            function validateform()
            {
                var x=document.forms["myform"]["t1"].value;
                if(x==null||x=="")
                {
                    alert("Required field must enter id no of prdctthat u want to purchase ");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <h3>Welcome to mobile market </h3>
    <center><table class="tbl2"><tr style='background-color:black;color:white;'><td>Brand</td><td>Mobile name</td><td>Price</td><td>id</td></tr>
            <%@include file="connect.jsp" %>
            <% try{
                ResultSet rs=st.executeQuery("select brand,model,price,id from mobile");
                int k;
                String productid=request.getParameter("productid");
                while(rs.next())
                {
                    out.println("<tr>");
                    for(k=1;k<=4;k++)
                    {
                        String price=rs.getString(3);
                        session.setAttribute("price", price);
                        out.println("<td>"+rs.getString(k)+"</td>");
                        
                    }
                }
                session.setAttribute("productid", productid);
                if(productid!=null)
                {
                    response.sendRedirect("view3.jsp");
                    
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }%>
        </table>
    </center>
    <form action="mobilemarket.jsp" method="post" onsubmit="return validateform()" name="myform" >
        <table>
            <tr>
                <td>Enter Product Id:<input type="text" name="productid"></td><td><input type="text" name="productid" value="" /></td>
                <td><input type="submit" value="purchase"></td>
            </tr>
        </table>
    </form>
    <form method="post" action="laptopmarket.jsp">
        <input type="submit" value="go to laptopmarket">
    </form>
    <form method="post" action="clothmarket.jsp">
        <input type="submit" value="go to clothsmarket">
    </form>
        
    
    </body>
    <%@include file="footer.jsp" %>
</html>
