<%-- 
    Document   : header
    Created on : Jan 29, 2019, 12:44:25 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>ul li{
            list-style-type: none;
            margin:0;
            padding:10;
            display:inline;
            font-size: 18;
            float:right;
            color:white;}
            a{
                color:white;
            }
        </style>
        
            
            
    </head> 
    <body style="background-image:url(th.jpg);background-color:lime;background-repeat: no-repeat;align:center;" />
        <header>
            <div style="border: 1px solid black;width:100%;height:60px;background-color:lime;align:center; border:0px solid white;border-radius: 2px;">
                <ul class="sub-menu d1-menu">
                    <li><a href="userreg.jsp">User Register</a></li>
                    <li><a href="userlogin.jsp">User Login </a></li>
                    <li><a href="adminreg.jsp">Admin Register</a></li>
                    <li><a href="adminlogin.jsp">Admin Login </a></li>
                    
                    <li><a href="report.jsp">Report </a></li>
                    <li></ul>
                
                               
                                    
                                    <form action="search.jsp" method="post">
                                         <table>
                                        <td>
                                            <input style="border:0px solid white;border-radius: 30px 0px 0px 30px;width:300px;" name="search">
                                        </td>
                                        <td>
                                            <input style="border:0px solid white;border-radius: 0px 30px 30px 0px;" type="submit" value="search">
                                        </td>
                                       </table> 
                                    </form>
                        
                   <a href="index.jsp" >home
                    
                 </a>
                 <h2 style="color:violet; align:center;">ShopZyada</h2>
        </div>
 </header>
  
    
    </body>
</html>
