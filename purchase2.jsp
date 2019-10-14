<%-- 
    Document   : purchase2
    Created on : Jun 13, 2019, 2:03:06 PM
    Author     : lenovo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase</title>
        <style>
            .tbl{
                border:1px solid black;
                width:100%;
                height:100px;
                font-size:20px;
                color:black;
                background-position: right;
            }
        </style>
        <script>
            function validate()
            {
              var x=document.forms["myform"]["t1"].value;
              var y=document.forms["myform"]["t2"].value;
              var z=document.forms["myform"]["t3"].value;
              var a=document.forms["myform"]["t4"].value;
              var b=document.forms["myform"]["t5"].value;
              var c=document.forms["myform"]["t6"].value;
              var d=document.forms["myform"]["t7"].value;
                if(x=="")||(x==null)
                {
                 alert("Required field must entr name");
                 return false;
                }
                if(x=="")||(x==null)
                {
                 alert("Required field must entr name");
                 return false;
                }
                if(y=="")||(y==null)
                {
                 alert("Required field must entr email");
                 return false;
                }
                if(z=="")||(z==null)
                {
                 alert("Required field must entr mobile no");
                 return false;
                }
                if(a=="")||(a==null)
                {
                 alert("Required field must entr state");
                 return false;
                }
                if(b=="")||(b==null)
                {
                 alert("Required field must entr city");
                 return false;
                }
                if(c=="")||(c==null)
                {
                 alert("Required field must entr pin no");
                 return false;
                }
                if(d=="")||(d==null)
                {
                 alert("Required field must entr address");
                 return false;
                }
                
            }
        </script>
    </head>
    <body>
        <h3>delivery addrs details:</h3>
        <%@include file="connect.jsp" %>
        <% 
          try
          {
            int x=0;
            String name,mob,state,city,pin,addrs,item;
            name=request.getParameter("t1");
         // String email=request.getParameter("t2");
            mob=request.getParameter("t3");
            state =request.getParameter("t4");
            city=request.getParameter("t5");
            pin=request.getParameter("t6");
            addrs=request.getParameter("t7");
          // String brand=request.getParameter("t8");
       // brand=request.getParameter("t1");
//String brand1=(String)session.getAttribute("brand");
//session.setAttribute("id", brand1);
String email=(String)session.getAttribute("useremail");
String productid=(String)session.getAttribute("productid");
//ResultSet sr=st.executeQuery("select name from a where product='"+productid+"'"); 
String deliveredby=(String)session.getAttribute("owneremail");
out.println("owner:"+deliveredby);
//session.setAttribute("id",productid);
out.println("user:"+email);
String s;
String status="not deliverd";
int i=st.executeUpdate("insert into purchase(name,email,mobile,brand,state,city,pin,address,status,productid,deliveredby,feedback)values('"+name+"','"+email+"','"+mob+"','"+productid+"','"+state+"','"+city+"','"+pin+"','"+addrs+"','"+status+"','"+productid+"','"+deliveredby+"','"+""+"')");
if(name!=null)
    
{
    if(i>0)
    {
        
    
ResultSet rs=st.executeQuery("select * from purchase"); 
while(rs.next())
{
x=1;
}
    }
if(x==1)
{
out.println("ITEM HAS BEEN CONFIRMED THANK YOU FOR SHOPPING WITH US!!");
}}
  out.println("u hav selected "+productid);
  response.sendRedirect("shipment.jsp");
%>
<% 
                   }
                         catch(Exception e)
                         {
                           out.print(e);
                         } 
                 %>
    <center>
        <form method="post" action="purchase2.jsp" onsubmit="return validate();" name="myform">
            <table class="tbl" id="form1" >
                <tr><td>Name</td><td><input type="text" name="t1" value=""/></td></tr>
                <tr><td>email</td><td><input type="text" name="t2" value=""/> </td>
                <tr><td>Mobile</td><td><input type="text" name="t3"></td></tr>
                <tr><td>State</td><td><input type="text" name="t4"></td></tr>
                <tr><td>City</td><td><input type="text" name="t5"></td></tr>
                <tr><td>Pin</td><td><input type="text" name="t6"></td></tr>
                <tr><td>Address</td><td><input type="text" name="t7"></td></tr>
                 
                 <tr><td></td><td><input type="submit" value="Confirm material" /></td></tr>
                
            </table>
        </form>
    </center>
    <form action="deliver.jsp" method="post">
        <input type="submit" value="deliver" class="btn"/>
    </form>
    <form action="clothsmarket.jsp" method="post">
        <input type="submit" value="Go To Clothsmarket" class="btn"/>
    </form>
    <form action="laptopmarket.jsp" method="post">
        <input type="submit" value="Go To Laptopmarket" class="btn"/>
    </form>
    <form action="mobilemarket.jsp" method="post">
        <input type="submit" value="Go To mobilemarket" class="btn"/>
    </form>
                  
                   
                 
    <form action="index.jsp" method="post">
        <input type="submit" value="Go To Home" class="btn"/>
    </form>
    </body>
    <%@include file="footer.jsp" %>
</html>

