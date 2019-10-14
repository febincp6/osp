<%-- 
    Document   : purchase
    Created on : Apr 3, 2019, 8:42:48 AM
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
            mob=request.getParameter("t2");
            state =request.getParameter("t3");
            city=request.getParameter("t4");
            pin=request.getParameter("t5");
            addrs=request.getParameter("t6");
       // item=request.getParameter("t1");
        //brand=request.getParameter("t1");
 String brand1=(String)session.getAttribute("brand");
String email=(String)session.getAttribute("useremail");
String productid=(String)session.getAttribute("productid");
String deliveredby=(String)session.getAttribute("owneremail");
out.println("owner:"+deliveredby);
//session.setAttribute("id",productid);
out.println("user:"+email);
String s;
String status="not deliverd";
int i=st.executeUpdate("insert into purchase(name,email,mobile,brand,state,city,pin,address,status,productid)values('"+name+"','"+email+"','"+mob+"',,'"+brand1+"','"+state+"','"+city+"','"+pin+"','"+addrs+"','"+status+"','"+productid+"')");
if(name!=null)
    
{
    if(i>0)
    {
        
    
ResultSet rs=st.executeQuery("select * from purchase"); 
while(rs.next())
{
x=1;
}

if(x==1)
{
out.println("ITEM HAS BEEN CONFIRMED THANK YOU FOR SHOPPING WITH US!!");
}}}
%>
    <center>
        <form method="post" action="purchase.jsp" onsubmit="return validate();" name="myform">
            <table class="tbl" id="form1" >
                <tr><td>Name</td><td><input type="text" name="t1"></td></tr>
                <tr><td>Mobile</td><td><input type="text" name="t2"></td></tr>
                <tr><td>State</td><td><input type="text" name="t3"></td></tr>
                <tr><td>City</td><td><input type="text" name="t4"></td></tr>
                <tr><td>Pin</td><td><input type="text" name="t5"></td></tr>
                <tr><td>Address</td><td><input type="text" name="t6"></td></tr>
                 <tr><td>Item to be Purchase</td><td><input type="text" name="t8" value=<%out.println(brand1);%> disabled></td></tr>
                 <tr><td></td><td><input type="submit" value="Confirm material" /></td></tr>
                 <tr><td>Brand:<%out.println(brand1);%></td><td><input type="text" name="t1"></td></tr>
            </table>
        </form>
    </center>
    <form action="clothsmarket.jsp" method="post">
        <input type="submit" value="Go To Clothsmarket" class="btn"/>
    </form>
    <form action="laptopmarket.jsp" method="post">
        <input type="submit" value="Go To Laptopmarket" class="btn"/>
    </form>
    <form action="mobilemarket.jsp" method="post">
        <input type="submit" value="Go To mobilemarket" class="btn"/>
    </form>
                 <% 
                   }
                         catch(Exception e)
                         {
                           out.print(e);
                         } 
                 %>
    <form action="index.jsp" method="post">
        <input type="submit" value="Go To Home" class="btn"/>
    </form>
    </body>
    <%@include file="footer.jsp" %>
</html>
