<%-- 
    Document   : adminprofile
    Created on : Feb 6, 2019, 7:53:36 AM
    Author     : lenovo
--%>
<%@include file="header.jsp"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    
        <link rel="stylesheet" href="newcss.css"/>
      
        </head>
    <body>
    <center>
        <div>
        <h1>Welcome to Profile!</h1>
   
  </div>
         </center>
    <form action="adminprofile.jsp" method="post">
        <%@include file="connect.jsp" %>
       <% try
          { 
           ResultSet rs= st.executeQuery("select * from admintbl");
       String email=(String)session.getAttribute("id");
      // session.setAttribute("adminid", email);
        if(email.equals(" "))
        {
            out.print("pls login again!!");
            
        }
        else
        {
            out.print("<div>Welcome"+email+"</div>");
        }
       ResultSet sr=st.executeQuery("select count(*) from laptop where uploadedby='"+email+"'");
         if(sr.next())
         {
             int nooflap=Integer.parseInt(sr.getString(1));
             out.println("<br>Laptop:"+nooflap+"<br>");
         }
   ResultSet ss=st.executeQuery("select count(*)from mobile where uploadedby='"+email+"'");
 
if(ss.next())
{
  int noofmob=Integer.parseInt(rs.getString(1));
out.println("Mobile:"+noofmob+"<br>");
}
/*rs=st.executeQuery("select count(*)from cloths where uploadedby='"+email+"'");
if(rs.next())
{
 int noofcloth=Integer.parseInt(rs.getString(1));
out.println("<br>Mobile:"+noofcloth+"<br");
}*/

       }
        catch(Exception e)
          {
           out.print(e);
               }%>
<center>
    </form>
    <div class="div1">
        <div class="div">
            <form method="post" action="logout.jsp">
                <input type="submit" value="Logout">
                
            </form>
            
        </div>
        <div class="div1">
            <form action="adminupdate.jsp" method="POST">
                <input type="submit" value="Update profile" />
            </form> 
        </div>
        
        <div class="div1">
            <form action="laptop.jsp" method="POST">
                <input type="submit" value="Laptop Sale" />
            </form> 
        </div>
        <div class="div1">
            <form action="mobile.jsp" method="POST">
                <input type="submit" value="Mobile Sale" />
            </form> 
        </div>
        <div class="div1">
            <form action="cloths.jsp" method="POST">
                <input type="submit" value="Cloth Sale" />
            </form> 
        </div>
        <div class="div1">
            <form action="adminitempurchaseorder.jsp" method="POST">
                <input type="submit" value="Deliver the Product" />
            </form> 
        </div>
        </div>
</center>
    
<div style="margin-top: 100px;">
    <%@include file="footer.jsp"%>
</div>
</body>
</html>
