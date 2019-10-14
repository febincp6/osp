<%-- 
    Document   : adminreg
    Created on : Feb 5, 2019, 2:56:47 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Register</title>
        <script>
            function validateform()
            {
                var filter=/^([a-z A-Z @ 0-9_\ .\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
             var z=/^[a-z A-Z @ \.\-]+$/;
             var email=document.getElementById("t1");
              if(document.forms["myform"]["t1"].value.length==0)
              { alert("Required Field must enter Email");
                return false;
               }
               else if (!filter.test(document.forms["myform"]["t1"].value))
                {
                    alert("pls provide a valid email");
                    email.focus;
                    return false;
                }   
               
            var y=document.forms["myform"]["t2"].value;
            var a=document.forms["myform"]["t3"].value;
            var b=document.forms["myform"]["t4"].value;
            var c=document.forms["myform"]["t5"].value;
            var d=document.forms["myform"]["t6"].value;
            var e=document.forms["myform"]["t7"].value;
/*if(x.equals(""))
{
   { alert("Required Field must enter name");
    return false;
   }*/ 
if(y==""||y==null)
{
    alert("Required Field Must enter Name ");
    return false;
}
if(a==""||a=="null")
{
    alert("Required Field must enter Password");
    return false;
}
if(b==""||b=="null")
{
    alert("Required Field must enter mobile");
    return false;
}
else if(document.forms["myform"]["t4"].value.length<9)
{
    alert("pls ntr valid number");
    return false;
}
 else if(document.forms["myform"]["t4"].value.match(z))
{
    alert("pls ntr valid numbers only");
    return false;
}
if(c==""||c=="null")
{
    alert("Required Field must enter Address");
    return false;
}
if(d==""||d=="null")
{
    alert("Required Field must enter company");
    return false;
}
            }
            </script>
            

    </head>
    <body>
    <center>
        <h3 style="margin-top: 50px;color:red;">Admin Registration Form</h3>
    </center>
    <center>
        <form action="adminreg.jsp" method="POST" onsubmit="return validateform();" name="myform">
        <table style="border:0px solid white;border-radius:12px;background-color:grey;margin-top:10px;width:30%;">
            
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="t1" value="" /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="t2" value="" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="t3" value="" /></td>
                </tr>
                <tr>
                    <td>Mobile:</td>
                    <td><input type="text" name="t4" value="" /></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="t5" rows="4" cols="20">
                        </textarea></td>
                </tr>
                <tr>
                    <td>Company:</td>
                    <td><input type="text" name="t6" value="" /></td>
                </tr>
                <tr>
                    <td>Product To Sale:</td>
                    <td>Mobile<input type="checkbox" name="t7" value="Mobile" />
                        Laptop<input type="checkbox" name="t7" value="Laptop" />
                        Cloth<input type="checkbox" name="t7" value="Cloth" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"  /></td>
                </tr>
            </tbody>
        </table>

    </form>
    <hr style="width:500px;">
</center>
    <%@include file="connect.jsp" %>
    <%
      try{
          String name,email,pwd,mb,add,comp,prdct;
        name=request.getParameter("t2");
      email=request.getParameter("t1");
      pwd=request.getParameter("t3");
      mb=request.getParameter("t4");
      add=request.getParameter("t5");
      comp=request.getParameter("t6");
      prdct=request.getParameter("t7");
      String s;
if(name!=null&&email!=null) 
{
ResultSet rs=st.executeQuery("select * from admintbl where email='"+email+"'");
if(rs.next())
{
out.println("Already registerd");

}
else
{

   
int i=st.executeUpdate("insert into admintbl(name,email,password,mobile,address,company,product)values('"+name+"','"+email+"','"+pwd+"','"+mb+"','"+add+"','"+comp+"','"+prdct+"')");    
if(i>0)
{
  out.print("successfully Registerd");
}  
}
}}
 catch(Exception e)
{
  out.print(e);
}%>

</body>
<%@include file="footer.jsp" %>

</html>
