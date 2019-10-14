<%-- 
    Document   : adminlogin
    Created on : Feb 9, 2019, 9:01:58 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <script>
            function validate()
            {
                if(document.forms["myform"]["t1"].value.length==0)
                {alert("Required field must enter email");
                    return false;
                }
                if(document.forms["myform"]["t2"].value.length==0)
                {alert("Required field must enter password");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        
        
            
          
          <%@include file="connect.jsp" %>
           <% 
             try{
                String email,password;
                email=request.getParameter("t1");
                password=request.getParameter("t2");
                 
               // ResultSet rs=st.executeQuery("select * from admintbl where email='"+email+"'and password='"+password+"'");
             
                session.setAttribute("id",email);
                session.setAttribute("id1",password);
                String mail=((String)session.getAttribute("id"));
                String pwd=((String)session.getAttribute("id1"));
                ResultSet rs=st.executeQuery("select email,password from admintbl where email='"+mail+"'and password='"+pwd+"'");
               // if(sr.next())
               // {
                 if(email!=null&& password!=null)
                {
                 while(rs.next())
                {  
                 
                  session.setAttribute("id",rs.getString(1));
               // session.setAttribute("id1",rs.getString(3));   
                response.sendRedirect("adminprofile.jsp");
               } }
              /*else
                {
                    out.print("error");
                }
                 /*}
                else
                {
                    out.print("error1");
                }*/
               // } }else
               // {
               //  out.print("error2");      
              // }*/
              }
             catch(Exception e)
            {
              out.print(e);
            }%>
        <form  method = "POST"  action="adminlogin.jsp" name="myform">
                <table border = "1">
                            
                             <tbody>
                        <tr><td>Email:</td><td><input type = "text" name = "t1" value = ""></td> <tr>
                            <td>Passwoord: </td> <td><input type = "password" name = "t2" value = "" /></td> </tr> 
                            <tr>
                            <td> </td>
                            <td><input type = "submit" value = "Login"/> </td>  </tbody>
                            </table >
            </form>
          
    </body>
</html>
