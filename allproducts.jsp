<%-- 
    Document   : allproducts
    Created on : Jul 11, 2019, 5:33:28 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<%@include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            String query[]=new String[10];
            int count=0;
            query[0]="select * from mobile";
            query[1]="select * from laptop";
            for(int i=0;i<3;i++)
            {
                ResultSet rs=st.executeQuery(query[i]);
                if(i==0)
                {
                    if(rs.next())
                    {
                        count++;
                        out.println("<h3>Mobile Bazar:</h3><hr>");
                        out.println("<center><table style='width:80%;'><tr style='background-color:black;color:white;'>"+"<td>BRAND</td><td>MODEL</td><td>PRICE</td><td>SIM</td><td>OS</td><td>PROCESSOR</td><td>SIZE</td><td>CAMERA</td><td>WEIGHT</td><td>BATTERY</td><td>WARRANTY</td></tr>"); 
                        out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");
                    }
                        while(rs.next())
                        {
                            count++;
                             out.println("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(14)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");
                            
                           // out.println("<img height="89" src=<%rs.getString(14)
                             
    
                          // out.println("<img height="89" src=<%rs.getString(14)%/>");
                            
                       
                        
                          
                    }
                        out.println("</table></center>");
                }
                else if(i==1)
                {
                    if(rs.next())
                    {
                        count++;
                        out.println("<h3>Laptop bazar:</h3><hr>");
                      out.println("<center><table style='width:80%;'><tr style='background-color:white;'><td>BRAND</td><td>SPECIFICATION</td><td> PRICE</td><td> CLOCK</td><td> RAM </td><td>HDD</td><td> SYSTEM</td><td> BATTERY</td><td> WARANTY</td></tr> ");
                      out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>");
                    }
while(rs.next())
{
count++;
out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>");
}
out.println("</table></center>");
                }
            }
out.println("<br><h4 style='color:red;'>Total no of data found:"+count+"</h4>");
        }
 catch(Exception e)
{
out.print(e);
}%>
    </body>
</html>
