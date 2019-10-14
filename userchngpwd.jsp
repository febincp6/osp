<%-- 
    Document   : userchngpwd
    Created on : Feb 3, 2019, 1:52:50 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>userchange password</title>
        <link  rel="stylesheet" href="newcss.css"/>
    </head>
    <body>
        <%
         try{
             String newpswd,mail;
             newpswd=request.getParameter("t1");
             mail=(String)session.getAttribute("id");
             out.println("Welcome:"+mail);
             if(newpswd!=null)
             {
                 int i=st.executeUpdate("update usertbl set password='"+newpswd+"' where email='"+mail+"'");
                     if(i>0)
                    {
                        out.println("Password has been updated");
                        response.sendRedirect("userprofile.jsp");
    
                  }             

             }
         }
         catch(Exception e)
         {
             out.print(e);
             
           
         }
         %>
         
    <center>
        <h3 style="color:orangered" >Enter new Password</h3></center>
    <center>
        
        <form action="userchngpswd.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Enter Newpassword</td>
                        <td><input type="password" name="t1" value="" class="btn"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Change Password" class="btn"/></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </center>
    </body>
    <%@include file="footer.jsp" %>
</html>
