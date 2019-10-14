<%-- 
    Document   : search
    Created on : Jul 16, 2019, 10:40:08 AM
    Author     : Febin
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
        <form method="post" action="search.jsp"/>
        <%@include file="connect.jsp"%>
        <h1>Hello World!</h1>
        search:<input type ="text" name ="search"  value = "" / >
        <% 
          try
        {
            String searchtext=request.getParameter("search");
            out.println("u r looking for:"+searchtext+"<br>");
            String query[]=new String[10];
            int count=0;
            query[0]="select * from mobile where brand like('"+searchtext+"')";
            query[1]="select * from laptop where brand like('"+searchtext+"')";
           // query[2]="select * from cloths  where brand like('"+searchtext+"')";
            query[2]="select * from usertbl where name like('"+searchtext+"')";
            query[3]="select * from admintbl where name like('"+searchtext+"')";
            query[4]="select * from purchase where productid like('"+searchtext+"')";
            for(int i=0;i<5;i++)
            {
                ResultSet rs=st.executeQuery(query[i]);
                
                if(i==0)
                {
                    if(rs.next())
                    {
                        count++;
                        out.println("<h3>found data in mobile:</h3><p><b>Details:</b></p><hr>");
                        out.println("<center><table><tr style='background-color:black;color:white;'><td>ID</td><td>BRAND</td><td> MODEL</td><td> PRIZE</td><td> SIM</td><td> OS</td><td> PROCESSOR</td><td> SIZE</td><td> CAMERA</td><td> WEIGHT </td><td>BATTERY</td><td> WARRANTY</td> ");
                        out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td>");
                  while(rs.next())
{
    count++;
    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td>");
}
out.println("</table></center>"); 
                   }}
                  else if(i==1)
                  {
                        if(rs.next())
                        {
                              count++;
                        out.println("<h3>found data in laptop:</h3><p><b>Details:</b></p><hr>");
                        out.println("<center><table><tr style='background-color:black;color:white;'><td>ID</td><td>BRAND</td><td> SPECIFICATION</td><td> PRIZE</td><td>CLOCK</td><td>RAM</td><td>HDD</td><td>PROCESSOR</td><td>BATTERY</td><td>WARRANTY</td></tr>");
                        out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td>");
                  while(rs.next())
{
    count++;
    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td>");
}
out.println("</table></center>"); 
                        }
                }
              /*  else if(i==2)
                {
                   if(rs.next())
                    {
                        count++;
                        out.println("<h3>found data in cloths:</h3><p><b>Details:</b></p><hr>");
                        out.println("<center><table><tr style='background-color:black;color:white;'><td>NAME</td><td> MODEL</td><td> PRIZE</td><td> SIM</td><td> OS</td><td> PROCESSOR</td><td> SIZE</td><td> CAMERA</td><td> WEIGHT </td><td>BATTERY</td><td> WARRANTY</td> ");
                       
                       out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>");
                  while(rs.next())
{
    count++;
    out.print("<tr><td>"+rs.getString(1)+"<tr><td>"+rs.getString(2)+"<tr><td>"+rs.getString(3)+"<tr><td>"+rs.getString(4)+"<tr><td>"+rs.getString(5)+"<tr><td>"+rs.getString(6)+"<tr><td>"+rs.getString(7)+"<tr><td>"+rs.getString(8)+"<tr><td>"+rs.getString(9)+"<tr><td>"+rs.getString(10)+"<tr><td>"+rs.getString(11));
}
out.println("</table></center>");   
                }
            }*/
                else if(i==2)
                {
                   if(rs.next())
                    {
                        count++;
                        out.println("<h3>found data in user:</h3><p><b>Details:</b></p><hr>");
                        out.println("<center><table><tr style='background-color:black;color:white;'><td>EMAIL</td><td> NAME</td><td>PASSWORD</td><td>MOBILE</td><td> ADDRESS</td> ");
                       
                        out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td>");
                  while(rs.next())
{
    count++;
    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td>");
}
out.println("</table></center>");   
                }
            }
                
                else if(i==3)
                { if(rs.next())
                    {
                        count++;
                        out.println("<h3>found data in admin:</h3><p><b>Details:</b></p><hr>");
                        out.println("<center><table><tr style='background-color:black;color:white;'><td>email</td><td>name</td><td>password</td><td>mobile number</td><td>address</td><td>company</td><td> PROduct</td><td> ");
                         out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td>");
                  while(rs.next())
{
    count++;
    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td>");
}
out.println("</table></center>"); 
        }
                }
             else if(i==4)
                { if(rs.next())
                    {
                        count++;
                        out.println("<h3>found data in purchase:</h3><p><b>Details:</b></p><hr>");
                        out.println("<center><table><tr style='background-color:black;color:white;'><td>name</td><td>email</td><td>mobile number</td><td>address</td><td>company</td><td> PROduct</td><td> ");
                        out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>");
                  while(rs.next())
{
    count++;
    out.print("<tr><td>"+rs.getString(1)+"<tr><td>"+rs.getString(2)+"<tr><td>"+rs.getString(3)+"<tr><td>"+rs.getString(4)+"<tr><td>"+rs.getString(5)+"<tr><td>"+rs.getString(6)+"<tr><td>"+rs.getString(7)+"<tr><td>");
}
out.println("</table></center>"); 
        }
                }
            
            }
                out.println("<br><h4 style='color:red;'>Total number of data found:"+count+"</h4>");
        
        }
                        
 catch(Exception e) 
{
        out.print(e);
}%>
    </form>
</body>
<%@include file="footer.jsp" %>
</html>
