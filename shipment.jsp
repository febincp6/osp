<%-- 
    Document   : shipment
    Created on : Jul 16, 2019, 5:53:13 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update profile</title>
        <style>
            .tbl{
                border:1px solid black;
                width:100%;color:black;
                background-position:right;
            }
        </style>
    </head>
    <body>
    <form action="shipment.jsp" method="post">    
    <center>
        <table width="100%">
            <tr style='background-color:black;color:white;'>
                <td>name</td>
                <td>product name</td>
                <td>deliveredby</td>
                <td>status</td>
                <td>feed back</td>
                  </tr>
        </table>
        
                   <%
                      try
                         
                      {
                      String email=(String)session.getAttribute("useremail");
                          //String email= 
                      ResultSet rs=st.executeQuery("select * from purchase where email='"+email+"'");
                      String status;
                       int count=0;
                      if(email!=null)
                      { 
                        
                          while(rs.next())
                          {
                              count++;
                              status=rs.getString(9);
                              if(status.equals("delivered"))
                              {
                                  out.println("<tr><td>"+(count)+".</td><td>"+rs.getString(2)+"</td><td>(By cash)!!</td><td style='color:green;'>Delivered</td></tr>");
                                  //String feedback=rs.getString(12);
                                 
                              
                              if(rs.getString(12)!=null)
                                  {
                                      out.print("<td>"+"no feedback");
                                      %>
                                      <form action="feedback.jsp" method="post">
            <input  type="text"  name="feedback" >
                   <input type="submit" value="submit feedback!">
                                                         
                                      </form>
                                     
                                      
                                      <% out.println("</td>");
                                     /* String feed_back=request.getParameter("feedback");
                                      int  i=st.executeUpdate("insert into purchase(feedback)value('"+feed_back+"')");
     if(i>0)
     {
         out.println("successfully registerd!!");
     }*/                            out.print("</tr>");
                                           }
                                  
                                   else
                                  {
                                      out.println("<td>"+rs.getString(12));
                                  }
                                 // out.print("</tr>");
                               %> 
                             
                             <% } 
  else if(status.equals("not deliverd"))
{
out.println("<tr><td>"+(count)+"</td><td>"+rs.getString(2)+"<td>(By cash)!!</td><td style='color:red;'>not delivered</td><td></td></tr>");
}
  %>                           
  
  
  <%   }
                      }
                       
                           // }}
                  }
catch(Exception e)
{
out.print(e);
}
%>
 </form>
       
    </center>
 </body>
</html>
