<%-- 
    Document   : view3.jsp
    Created on : Feb 16, 2019, 9:44:34 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view</title>
        <!--link rel="stylesheet" href="newcss.css"/-->
    </head>
    <body>
        <h3 style="color:black;">Details of Your Selected Materials!</h3>
    <center>
        <table style="border:1px solid black;width:80%;">
            <tr style="background-color:black;color:white;">
                <td>ID</td>
                <td>Brand</td>
                <td>model</td>
                <td>prize</td>
                <td>sim</td>
                <td>os</td>
                <td>processor</td>
                <td>Size</td>
                <td>camera</td>
                <td>Weight</td>
                <td>battery</td>
                <td>warranty</td>
                <td>uploaded by</td>
            </tr>
            <%@include file="connect.jsp" %>
            <%
             try
            {
             String choice;
             String idno=(String)session.getAttribute("productid");
             String useremail=(String)session.getAttribute("useremail");
             out.println("hello:"+useremail);
             String money="";
             String productid;
             String brand;
             ResultSet rs=st.executeQuery("select * from mobile where id='"+idno+"'");
             out.println("<tr style='font-size:15px;color:red;'>");
while(rs.next())
{
for(int i=1;i<=13;i++)
{
    if(i==1)
{
    productid=rs.getString(i);
    session.setAttribute("productid", productid);
}
    
if(i==2)
{
brand=rs.getString(1);
session.setAttribute("brand",brand);
}
if(i==4)
{
money=rs.getString(i);

}
//out.println("<td>"+rs.getString(i)+"</td>");

if(i==13)
{
session.setAttribute("owneremail",rs.getString(i));
}
out.println("<td style='background-color:violet;'>"+rs.getString(i)+"</td>");
}
}
session.setAttribute("money",money);
out.println("</tr>");
out.println("you hav to pay" +money);
String mode;
mode=request.getParameter("x");
if(mode!=null)
{
if(mode.equals("online"))
{
response.sendRedirect("onlinepayment.jsp");
}
else
{
response.sendRedirect("purchase2.jsp");
}
}
  }
catch(Exception e)
{
out.println("e");
}
%>

        </table>
    </center>
   <form action="onlinepayment.jsp" method="post">
        <table class="tbl">
            <th>select payment mode</th>
            <tr> <td>online </td>
        <td><input type="radio" name="x" value="online" /></td>
    </tr>
        
        <tr><td>cash on delivery</td><td><input type="radio" name="x" value="offline" /></td></tr>
        
           
        <tr><td></td><td><input type="submit" name="x" value="DoPayment" /></td></tr>
           </table>
         </form>
         
    
    <%
    String choice="";
     choice=request.getParameter("x");
             if(choice!=null)
                {
                    if(choice.equalsIgnoreCase("online"))
                    {
                        response.sendRedirect("onlinepayment.jsp");
                        
                    }
                    else{
                        response.sendRedirect("purchase2.jsp");
                        
                    }
                }%>
     <form action="onlinepayment.jsp" method="post">
        <input type="submit" value="online" class="btn"/>
     </form>
    </body>
    <%@include file="footer.jsp" %>
</html>

    
        <!--table class="tbl"-->
            <!--%@include file="connect.jsp"%>
            <!--% try
            {
                String idno=((String)session.getAttribute("id"));
                String useremail=((String)session.getAttribute("useremail"));
                out.println("Welcome"+useremail+"<br>");
                String money="";
                String productid,brand2;
                ResultSet rs=st.executeQuery("select * from mobile where id='"+idno+"'");
                out.println("<tr>");
                while(rs.next())
                {
                    for(int i=1;i<=8;i++)
                    {
                        if(i==1)
                        {
                            brand2=rs.getString("id");
                            out.println("brand="+brand2);
                            session.setAttribute("productid",brand2);
                            
                         
                        }
                        if(i==4)
                        {
                            money=rs.getString(i);
                          //session.setAttribute("money", money);
                         //out.println("You hav to Pay"+money);
                          }
                        if(i==8)
                        {
                            session.setAttribute("owneremail", rs.getString(i));
                        }
                        //out.println("<td style='background-color:violet;'>"+rs.getString(i)+"</td>");
                        out.println("<td>"+rs.getString(i)+"</td>");
                    }
                }
                session.setAttribute("money", money);
                out.println("</tr>");
                out.println("You hav to Pay"+money);
                String mode;
                mode=request.getParameter("x");
                if(mode!=null)
                {
                    if(mode.equals("online"))
                    {
                        response.sendRedirect("onlinePayment.jsp");
                    }
                    else
                    {
                        response.sendRedirect("purchase2.jsp");
                    }
                }
            }catch(Exception e)
            {
              out.print(e);
            }
            %>
           
        <!--/table-->
    <!--/center>
    <form action="purchase2.jsp" method="POST">
        <table class="tbl">
            <th>Select Payment Mode</th>
            <tr><td>Online</td><td><input type="radio" name="x" value="online"></td></tr>
            <tr><td>Cash on Delivery</td><td><input type="radio" name="x" value="offline"></td></tr>
            <tr><td></td><td><input type="submit" value="Do Payment"></td></tr>
        </table>
    </form>
    </body>
    <!--%@include file="footer.jsp" %-->
<!--/html-->
