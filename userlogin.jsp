<%-- 
    Document   : userlogin
    Created on : Jan 29, 2019, 9:43:50 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="newcss.css"/>
        
        <script>
            function validateform()
            {
                var x=document.forms["myform"]["t1"].value;
                var y=document.forms["myform"]["t2"].value;
                if(x==null||x=="")
                {
                    alert("Required Field Must Enter Email Id");
                    return  false;
                }
                if(y==null||y=="")
                {
                    alert("Required Field Must Enter Password");
                    return false;
                }
            }
            </script>
    </head>
    <body>
    <center>
        <h1 style="margin-top: 80px;">
        </h1>
        
    </center>
    <center>
    <form name="myform" action="userlogin.jsp" method="POST" onsubmit="return validateform()">
        <table style="border:0px solid yellow;background-color: green;border-radius: 12px;border-color: grey;margin-top: 30px;">
            
            <thead>
                <tr>
                    <th</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="t1" class="btn" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="t2" class="btn" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" class="btn" /></td>
                </tr>
            </tbody>
        </table>

    </form>
        <hr style="width:400px;">
    </center>
    <%@include file="connect.jsp" %>
    <%
     try
    {
        String email,password;
       email=request.getParameter("t1");
       password=request.getParameter("t2");
      ResultSet rs=st.executeQuery("select * from usertbl where email='"+email+"'and password='"+password+"'");
      if(email!=null&&password!=null)
      {
          while(rs.next())
          {
              session.setAttribute("id", email);
              response.sendRedirect("userprofile.jsp");
              
          }
      }
    }
     catch(Exception e)
     {
         out.print("e");
     }%>
     <div style="margin-top: 250px;">
         <%@include file="footer.jsp" %>
     </div>
    
    </body>
    </html>
 
