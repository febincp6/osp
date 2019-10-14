<%-- 
    Document   : laptopmarket.jsp
    Created on : Mar 17, 2019, 6:32:06 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laptop Market</title>
    <script>
        function valideform()
        {
            var x=document.forms["myform"]["t1"].value;
            if (x==null||x=="")
            {
                alert("Required field must ntr id number of product that u want to purchase");
                return false;
            }
        }
        </script>
    
    </head>
    <body>
        <h3>Welcome to Laptop Market!</h3>
    <center><table style="border:1px solid black;width:80%;"><tr style="background-color:black;color:white;"><td>Brand</td><td>Specification</td><td>Price</td><td>Product ID</td></tr>
                <%@include file="connect.jsp" %>  
                <%
                     try
                   {
                       int k,l=0;
                   ResultSet rs=st.executeQuery("select brand,specification,price,id from laptop" );
                   String useremail=(String)session.getAttribute("user_email");
                   session.setAttribute("useremail", useremail);
                   out.println("Hello:"+useremail);
                   String idno;
                   idno=request.getParameter("t1");
                   while(rs.next())
                   {
                       out.println("<tr>");
                       for(k=1;k<=4;k++)
                       {
                           String price=rs.getString(3);
                           session.setAttribute("price",price);
                           out.println("<td>"+rs.getString(k)+"</td>");
                       }
                       }
                   session.setAttribute("productid",idno);
                   if(idno!=null)
                   {
                       response.sendRedirect("view2.jsp");
                   }
                   
                   }
                     catch(Exception e)
                     {
                         out.println(e);
                   }
                     %>
        </table>
    </center>
    <form action="laptopmarket.jsp" method="post" onsubmit="return valideform();" name="myForm">
        <table>
            <tr>
                <td>
                    Enter Product ID:<input type="text" name="t1" value="" /></td>
                
                <td><input type="submit" value="purchase" class="btn"></td>
            </tr>
        </table>
    </form>
    <center>
        <table style="border:1px solid black;">
            <tr>
                <td>
                    <form method="post" action="clothsMarket.jsp">
                        <input type="submit" value="Go To Clothmarket">
                    </form></td><td>
                        <form method="post" action="mobileMarket.jsp">
                            <input type="submit" value="Go to Mobile Market">
                        </form></td>
            </tr>
        </table>     
        
    </center>
                    </body>
                    <%@include file="footer.jsp" %>
</html>
