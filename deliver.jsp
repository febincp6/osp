<%-- 
    Document   : deliver
    Created on : Jun 18, 2019, 12:21:31 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="connect.jsp" %>
        <form action="deliver.jsp" method="post">
        <%
         try{
            String useemail=request.getParameter("t1");
             
              
             
             //String useemail=(String)
            session.setAttribute("useremail",useemail);
             
            // out.println(useemail);
            
             out.println("Customer email="+useemail+"<br><hr>");
              //ResultSet rs=st.executeQuery("select * from purchase ");
             ResultSet rs=st.executeQuery("select * from purchase");
     while(rs.next())
     {
      for(int i=1;i<=12;i++)
     {
     out.println(rs.getString(i));
     }
    out.println("<br>");
    }
   String s="delivered";
   String deliveredby=" ";
   deliveredby=(String)session.getAttribute("owneremail");
   int x=st.executeUpdate("update purchase set status='"+s+"',deliveredby='"+deliveredby+"' where email='"+useemail+"'");
   out.println(useemail);
   out.println("<br><br>Item status changed successfully<br>");
        }
   catch(Exception e)
   {
   out.println(e);
   }
    //>
     // response.sendRedirect("shipment.jsp");%>
        </form> 
       <form action="shipment.jsp" method="post">
           <input type="submit" value="shipment">
       </form> 
    </body>
    
    <%@include file="footer.jsp" %>
</html>
