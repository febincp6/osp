<%-- 
    Document   : adminitempurchaseorder
    Created on : Jul 12, 2019, 11:53:59 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order for shipment</title>
        <style>
            .tbl{
                border:1px solid black;
                width:100%;
                font-size:15px;
                color:black;
                background-position:right;
            }
            #form1
            {
                background-image:url("pic1.jpg");
                background-repeat:no-repeat;
                background-color: white;
            }
            
        </style>
        <script>
            function validateform()
            {
                var x=document.forms["myform"]["t1"].value;
                if(x==null||x=="")
                {
                    alert("required field must ntr person name");
                    return false;
                }
            }
            </script>
    </head>
     
    <body>
      <!--form action="deliver.jsp" method="post" onsubmit="return validateform();"  name="myform"-->  
        <h3>customer detail for shipment</h3>
        <div>
            <%@include file="connect.jsp" %>
            <%try
            {
               // int h;
               // String textt1=request.getParameter("t1");
                //session.setAttribute("upd",textt1);
                ResultSet rs=st.executeQuery("select * from purchase where status='delivered'");
            out.println("<p>Delivered products:</p><hr><center><table class=\"tbl\">"+"<tr style='background-color:black;'color:white;'><td>customer Name</td><td>customer email</td>"+"<td>mobile"+"<td>Address</td><td>item</td>"+"<td>Status of Delivery</td><td>Delivered By</td><td>Get More Details</td></tr>");
            while(rs.next())
{
out.println("<tr>");
for(int i=1;i<=12;i++)
{
if(i==4||i==5||i==6)
{
continue;
}
else
{
out.println("<td>"+rs.getString(i)+"");
}//}}
if(i==4)
{
 String query[]=new String[3];
query[0]="select id from laptop where brand='"+rs.getString(i)+"'";
query[1]="select id from mobile where brand='"+rs.getString(i)+"'";
boolean flag=true;
for(int j=0;j<3;j++)
 {
  ResultSet rst=st.executeQuery(query[j]);
if(rst.next())
{
flag=false;
out.println("<br><u style='color:red;'>(producct id:"+rst.getString("id")+")<u/>");

}
}
if(flag)
{
out.println("<br>(product id not found)");

}
}
out.println("</td>");
}
}
out.println("</table></center>");

  ResultSet rs_notdelivered=st.executeQuery("select * from purchase where status='not deliverd'");
            out.println("<p>not Delivered products:</p><hr><center><table class=\"tbl\">"+"<tr style='background-color:black;'color:white;'><td>customer Name</td><td>customer email</td>"+"<td>mobile"+"<td>Address</td><td>item</td>"+"<td>Status of Delivery</td><td>Delivered By</td><td>Get More Details</td></tr>");
            while(rs_notdelivered.next())
{
out.println("<tr>");
for(int i=1;i<=12;i++)
{
   out.println("<td>"+rs_notdelivered.getString(i)+"");
if(i==4||i==5||i==6) 
{
continue;
}
else
{
out.println("<td>"+rs_notdelivered.getString(i)+"");
if(i==4)
{
 String query[]=new String[3];
query[0]="select id from laptop where brand='"+rs_notdelivered.getString(i)+"'";
query[1]="select id from mobile where brand='"+rs_notdelivered.getString(i)+"'";
boolean flag=true;
for(int j=0;j<3;j++)
 {
   ResultSet rst_notdelivered=st.executeQuery(query[j]);
//if(rst.next())

 /*if(i==4)
{
ResultSet rst=st.executeQuery("select id from laptop where brand='"+rs_notdelivered.getString(i)+"'");*/
if(rs_notdelivered.next())
{
out.println("<br>(product id="+rs_notdelivered.getString(1)+")");

}
else
{
out.println("<br>(not found)");
}}
out.println("</td>");
}}}}


out.println("</table></center>");
}
//}}}
 catch(Exception e)
{
out.print(e);
}
%>
      <!--/form-->
        </div>
        <form action="deliver.jsp" method="post" onsubmit="return validateform();"  name="myform">
        <table style="border:1px solid black;">
            <th style="background-color:black;color:white;">update delivery status:</th>
                   <!--form action="deliver.jsp" method="post" onsubmit="return validateform();"  name="myform"-->
                <tr><td>Enter customer email to update delivery status:</td><td><input type="text" name="t1" value="" /></td></tr>
               
                <tr><td></td><td><input type="submit" value="update!!" /></td></tr>
                      </table>
        
             </form>
      
     </body>
    <%@include file="footer.jsp" %>
</html>
