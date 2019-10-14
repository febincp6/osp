<%-- 
    Document   : laptop.jsp
    Created on : Feb 28, 2019, 5:57:28 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laptop</title>
        
        <link rel="stylesheet" href="newcss.css">
        <script>
             function validateform()
            {
               /* var filter=/^([a-z A-Z @ 0-9_\ .\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
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
                }*/   
            var x=document.forms["myform"]["t1"].value; 
            
            var y=document.forms["myform"]["t2"].value;
            var a=document.forms["myform"]["t3"].value;
            var b=document.forms["myform"]["t4"].value;
            var c=document.forms["myform"]["t5"].value;
            var d=document.forms["myform"]["t6"].value;
            var e=document.forms["myform"]["t7"].value;
            var f=document.forms["myform"]["t8"].value;
            var g=document.forms["myform"]["t9"].value;
/*if(x.equals(""))
{
   { alert("Required Field must enter name");
    return false;
   }*/ 
        if(x==""||x==null)
{
    alert("Required Field Must enter Brand Name ");
    return false;
}
if(y==""||y==null)
{
    alert("Required Field Must enter Specification");
    return false;
}
if(a==""||a=="null")
{
    alert("Required Field must enter price in rupee");
    return false;
}
if(b==""||b=="null")
{
    alert("Required Field must enter clock Speed");
    return false;
}
if(c==""||c==null)
{
    alert("Required Field must enter Ram frequency");
    return false;
}
if(d==""||d=="null")
{
    alert("Required Field must enter HDD capacity");
    return false;
}
if(e==""||e=="null")
{
    alert("Required Field must enter System Architecture,ie 64bit or 32bit ");
    return false;
}
if(f==""||f=="null")
{
    alert("Required Field must enter Battery Backup");
    return false;
}
if(g==null||g=="")
{
    alert("Required field must enter Warranty Period");
    return false;
}}
</script>


    </head>
    <body>
        <%@include file="connect.jsp" %>
        <% try
        {
            String brand,specification,price,clock,ram,hdd,system,battery,warranty;
            brand=request.getParameter("t1");
            specification=request.getParameter("t2");
            price=request.getParameter("t3");
            clock=request.getParameter("t4");
            ram=request.getParameter("t5");
            hdd=request.getParameter("t6");
           system=request.getParameter("t7");
           battery=request.getParameter("t8");
           warranty=request.getParameter("t9");
           String uploadedby=((String)session.getAttribute("adminid"));
           out.println(uploadedby);
          String s;
          int countid=0;
         if(brand!=null&&warranty!=null)
         {
          ResultSet rs=st.executeQuery("select count(*) from laptop");
           if(rs.next())
          {
           countid=Integer.parseInt(rs.getString(1));
           
          }
          
          int i=st.executeUpdate("insert into laptop(id,brand,specification,price,clock,ram,hdd,processor,battery,waranty,uploadedby)values('"+countid+"','"+brand+"','"+specification+"','"+price+"','"+clock+"','"+ram+"','"+hdd+"','"+system+"','"+battery+"','"+warranty+"','"+uploadedby+"')"); 
        if(i>0)
{
out.println("successfully registerd!!");
}
           }
        }
catch(Exception e)
{
out.println(e);
}%>
        <h3> Enter details of your laptop product!!</h3>
    <center>
        <form action="laptop.jsp" method="post" onsubmit="return validateform();" name="myform">  
            <table class="tbl" >
                <tr><td>Brand</td><td>
                        <input type="text" name="t1" value="" class="btn" />
                    </td></tr>
                <tr><td>Specification</td><td>
                        <input type="text" name="t2" value="" class="btn" />Example(4th gen/Ci5/4gb/wim8)
                    </td></tr>
                <tr><td>price</td><td>
                        <input type="text" name="t3" value="" class="btn" />Rs/-
                    </td></tr>
                <tr><td>Clock Speed</td><td>
                        <input type="text" name="t4" value="" class="btn" />Ghz
                    </td></tr>
                <tr><td>Ram frequency</td><td>
                        <input type="text" name="t5" value="" class="btn" />
                    </td></tr>
                <tr><td>Hdd Capacity</td><td>
                        <input type="text" name="t6" value="" class="btn" />
                    </td></tr>
                <tr><td>PROCESSOR</td><td>
                        <input type="text" name="t7" value="" class="btn" />
                    </td></tr>
                <tr><td>Battery Backup</td><td>
                        <input type="text" name="t8" value="" class="btn" />
                    </td></tr>
                <tr><td>warranty</td><td>
                        <input type="text" name="t9" value=""  />
                    </td></tr>
                <tr><td></td><td>
                        <input type="submit" value="Add for sale!!" class="btn" />
                    </td></tr>
            </table>
            </form>
    </center>
    <h5>These informationwill be displayed to customers!!!<br>Make sure all informations are correct!!</h5>
    <form method="post" action="adminprofile.jsp">
        <input type="submit" value="Go to Profile " class="btn">
    </form>
    

</body>
<%@include file="footer.jsp" %>
</html>
