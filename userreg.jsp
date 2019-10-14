<%-- 
    Document   : userreg
    Created on : Jan 25, 2019, 3:32:24 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user register</title>
        <script>
            function isempty()
            {
                var data=document.getElementById("t1").value;
                if(data.length==0)
                {alert("name is required");
                  return false;  
            }
            return true;
        }
        
            function validateemail()
            {
                var email=document.getElementById("t2");
                var filter=/^([a-z A-z @ 0-9_\ .\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if(!filter.test(email.value))
                {
                    alert("pls provide a valid email");
                    email.focus;
                    return false;
                }
            }
        </script>
    </head>
    <body>
    <center><h3 style="margin-top: 40px;">User Registration</h3></center><hr style="width:400px;">
    <center>
    <form action="userreg.jsp" method="post" >
        <table  style="border:0px solid white;border-radius: 12px; background-color:grey;margin-top:30px;">
            <thead>
                <tr>
                    
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> Name:</td>
                    <td><input type="text" name="txt1" id="t1" class="btn" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="txt2" id="t2" class="btn"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td> <input type="password" name="t3" class="btn" /></td>
                </tr>
                <tr>
                    <td>Mobile:</td>
                    <td> <input type="text" name="t4" class="btn" /></td>
                </tr>
                <tr>
                    <td> Address:</td>
                    <td><input type="text" name="t5" class="btn" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"  class="btn" onclick="Javascript:validateemail();" /></td>
                </tr>
            </tbody>
        </table>
    </form>
    <hr style="width:400px;">
    </center>
       
    <%@include file="connect.jsp" %>    
       
      
       
        <% 
        try
        {
        String name,email,pwd,mb,add;
        
        name=request.getParameter("txt1");
        email=request.getParameter("txt2");
        pwd=request.getParameter("t3");
        mb=request.getParameter("t4");
        add=request.getParameter("t5");
        String s;

if(name!=null)
{
ResultSet rs=st.executeQuery("select * from usertbl where email='"+email+"'");


if(rs.next())
{

out.println("Already registerd!!");
}
 else
{
int i=st.executeUpdate("insert into usertbl(name,email,password,mobile,address) values('"+name+"','"+email+"','"+pwd+"','"+mb+"','"+add+"')");
if(i>0)
        {
            out.print("successfully registered");
        }

}}}
catch(Exception e)
{
out.print(e);
}%>
<div style="margin-top: 200px;">
    <%@include file="footer.jsp" %>
</div>
    </body>
</html>
