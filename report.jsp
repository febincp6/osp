<%-- 
    Document   : report
    Created on : Jul 18, 2019, 12:08:25 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
    </head>
    <body>
    <center style="margin-top: 40px;">
        <hr style="width:400px;"><h2>Relevent data r as follows:</h2>
        <hr style="width:500px;">
        <table style="border:1px solid black;margin-top:50px;background-color:grey;"></table>
        <%
       try{
           String query[]=new String[8];
           query[0]="select count(*) from usertbl";
           query[1]="select count(*) from admintbl";
           query[2]="select count(*) from mobile";
           query[3]="select count(*) from laptop";
           query[4]="select count(*) from cloths";
           query[5]="select count(*) from purchase where status='delivered'";
           query[6]="select count(*) from purchase where status='not deliverd'";
          for(int i=0;i<query.length;i++)
{
  ResultSet rs=st.executeQuery(query[i]);
if(rs.next())
{
if(i==0)
{
out.println("<tr><td>total no of users:</td><td>"+rs.getString(1)+"</td></tr>");
}
else if(i==1)
{
out.println("<tr><td>total no of admin:</td><td>"+rs.getString(1)+"</td></tr>");
}
else if(i==2)
{
out.println("<tr><td>total no of mobile products:</td><td>"+rs.getString(1)+"</td></tr>");
}
else if(i==3)
{
out.println("<tr><td>total no of laptop products:</td><td>"+rs.getString(1)+"</td></tr>");
}
else if(i==4)
{
out.println("<tr><td>total no of cloths products:</td><td>"+rs.getString(1)+"</td></tr>");
}
else if(i==5)
{
out.println("<tr><td>total no of  products delivered:</td><td>"+rs.getString(1)+"</td></tr>");
}
else if(i==6)
{
out.println("<tr><td>total no of products not delivered:</td><td>"+rs.getString(1)+"</td></tr>");
}
}
}       

 }
  catch(Exception e)
{
out.print(e);
}%>

    <hr style="width:400px;">
</center>
    <div style="margin-top: 180px;">
        <%@include file="footer.jsp"%>
    </div>
    </body>
</html>
