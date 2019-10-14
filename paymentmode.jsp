<%-- 
    Document   : paymentmode
    Created on : Jun 15, 2019, 11:55:08 AM
    Author     : lenovo
--%>
<%@include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <style>
            .tbl{
                border:1px solid black;
                width:700px;
                font-size:x-large;
                color:black;
                background-position:right;
            }
        </style>
    </head>
    <body>
        <% 
            try{
                String money=(String)session.getAttribute("money");
                String choice;
                session.setAttribute("money",money);
                choice=request.getParameter("h");
                out.println("youu have to pay" +money);
                out.println(choice);
                if(choice!=null)
                {
                    if(choice.equalsIgnoreCase("online"))
                    {
                        response.sendRedirect("onlinepayment.jsp");
                        
                    }
                    else{
                        response.sendRedirect("purchase.jsp");
                        
                    }
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }%>
    <center>
        <h1>enter mode of payment</h1></center>
    <center>
        <form action="paymentmode.jsp">
            <table class="tbl">
                <tr><td>online payment<input type="radio" name="h" value="online" /></td></tr>
             <tr><td>cash on Delivery<input type="radio" name="h" value="offline" /></td></tr>
            <tr><td>online payment<input type="submit"  value="Make Payment" /></td></tr>
            </table>
        </form>
    </center>
    </body>
    <%@include file="footer.jsp" %>
</html>
