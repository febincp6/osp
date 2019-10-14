
<%-- 
    Document   : userprofile
    Created on : Jan 24, 2019, 3:28:36 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <style>
            .div1{
                border:2px solid green;
                display:inline-block;
                height:10px;
                border-radius: 20px 20px 20px 20px;
            }
            .tbl{
                border:1px solide white;
                width:30%;
                font-size:20px;
                color:black;
                background-color:grey;
               
                background-position:right;
                       
            }
            .tbl1{
                border:4px solid green;
                border-radius: 34px 0px 34px 0px;
                width:100%;
                font-size:10px;
                color:green;
                background-position: right;
            }
            .btn{
                background-color:greenyellow;
                border:2px solid white;
                border-radius: 12px;
                height:25px;
                width:200px;
                font-size: 10px;
                color:white;
                
            }
            .person{font-size: xx-large;
            margin-left: 900px;}
            .div2{
                display:inline-block;
                border:3px solid;
                font-size: x-large;
                color:blue;
            }
            .ddl{
                height:100px;
                width:700px;
                margin-top:40px;
                border:2px solid green;
                border-radius: 63px 23px 0px 0px;
            }
            
            
        </style>
    </head>
    <body>
         <%@include file="connect.jsp"%>     
        <%
          
           try
         {
            
    String uemail=(String)session.getAttribute("id");
   // session.setAttribute("useremail",uemail);
    if(uemail!=null)
    {
      
        ResultSet rs=st.executeQuery("select * from usertbl where email='"+uemail+"'"); 
        session.setAttribute("useremail",uemail);
        out.println("<hr><u><p>personal Details:</p></u><table class=\"tb1\"><tr><td>");
   
while(rs.next())
{
out.println("Name</td><td>'"+rs.getString(1)+"'</td><tr><td>Email</td><td>'"+rs.getString(2)+"'</td></tr><tr><td>Mobile</td><td>'"+rs.getString(4)+"'</td></tr><tr><td>Address</td><td>'"+rs.getString(5)+"'</td></tr>"); 
}
out.println("</table>");
    }
    
}
catch(Exception e)
{
    out.print(e);
} %>
<hr>
<h2>SHIPMENT DETAILS:</h2>

<hr>
<div style="margin-top: 150px;">
    
</div><h3 class="heading">Welcome to your profile</h3><hr>
        <table style="width:100%;">
                    <tr><td>
                            <form action="userchngpwd.jsp" method="POST">
                                <input type="submit" value="change passwrd" />
                            </form><hr><hr><hr>
                </td>
                <td>
                    <form action="userupdate.jsp" method="POST">
                        <input type="submit" value=" Update Profile" />
                    </form>
                </td>
                <td>
                    <form action="userlogin.jsp" method="POST">
                        <input type="submit" value="Logout" />
                    </form>
                    <hr>
                    <hr>
                    <hr>
                </td>
                <td>
                    <table>
                        <tr><td style="margin-left: 900px;">
                                <form action="mobilemarket.jsp" method="POST">
                                <input type="submit" value="Go to Mobile Market" class="btn" />
                                </form>
                                <form action="laptopmarket.jsp" method="POST">
                                    <input type="submit" value="Go to Laptop market" class="btn" />
                                </form>
                                <form action="clothmarket.jsp" method="POST">
                                    <input type="submit" value="Go to ClothMarket" class="btn" />   
                                </form>
                            </td>
                        </tr>
                        
                        
                    </table>
                </td>
                    </tr>
        </table>

    </body>
    <%@include file="footer.jsp" %>
</html>
