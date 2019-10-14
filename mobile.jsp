
<%@page import="java.sql.ResultSet"%>
<%-- 
    Document   : mobile.jsp
    Created on : Mar 22, 2019, 12:52:10 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile</title>
        <style>
            .div{
                width:700px;
                border:2px solid grey;
                margin-left:60px;
            }
            .tb1{
                border:1px solid white;
                width:700px;
                font-size:20px;
                color:black;
                background-position:right;
            }
            #form1{
                background-image:url("pic2.jpg");
                background-repeat:no-repeat;
                background-color:white;
            }
            </style>
            <script>
                function validateform()
                {
                     var x=document.forms["myform"]["t1"].value;
                     var y=document.forms["myform"]["t2"].value;
                     var z=document.forms["myform"]["t3"].value;
                     var a=document.forms["myform"]["t4"].value;
                     var b=document.forms["myform"]["t5"].value;
                     var c=document.forms["myform"]["t6"].value;
                     var d=document.forms["myform"]["t7"].value;
                     var e=document.forms["myform"]["t8"].value;
                     var f=document.forms["myform"]["t9"].value;
                     var g=document.forms["myform"]["t10"].value;
                     var h=document.forms["myform"]["t11"].value;
                      if(x==null||x=="")
                      {
                          alert("Required field must ntr Brand Nmae");
                          return false;
                      }
                     
                     if(y==null||y=="")
                      {
                          alert("Required field must ntr Model Name");
                          return false;
                      }
                      if(z==null||z=="")
                      {
                          alert("Required field must ntr Price ");
                          return false;
                      }
                      if(a==null||a=="")
                      {
                          alert("Required field must ntr sim ");
                          return false;
                      }
                      if(b==null||b=="")
                      {
                          alert("Required field must ntr os Nmae");
                          return false;
                      }
                      
                      if(c==null||c=="")
                      {
                          alert("Required field must ntr Processor");
                          return false;
                      }
                      if(d==null||d=="")
                      {
                          alert("Required field must ntr size ");
                          return false;
                      }
                      if(e==null||e=="")
                      {
                          alert("Required field must ntr camera ");
                          return false;
                      }
                      if(f==null||f=="")
                      {
                          alert("Required field must ntr weight ");
                          return false;
                      }
                      if(g==null||g=="")
                      {
                          alert("Required field must ntr Battery");
                          return false;
                      }
                      if(h==null||h=="")
                      {
                          alert("Required field must ntr warranty ");
                          return false;
                      }
                }
            </script>
    </head>
    <body>
        <h3 class="heading">"ntr details of ur mobile prodct!!</h3>
        <%@include file="connect.jsp" %>
        <%
        try{
            String brand,model,price,sim,os,processor,size,camera,weight,battery,warranty;
           brand=request.getParameter("t1");
          model=request.getParameter("t2"); 
          price =request.getParameter("t3");
       
          sim=request.getParameter("t4");
          os=request.getParameter("t5");
          processor=request.getParameter("t6");

size=request.getParameter("t7");
camera=request.getParameter("t8");
weight=request.getParameter("t9");
battery=request.getParameter("t10");
warranty=request.getParameter("t11");
String image=request.getParameter("t12");
String s;
String pid="mobile";

ResultSet rs= st.executeQuery("select count(*) from mobile");
if(rs.next())
{
    pid+=rs.getString(1);
}
String adminid=(String)session.getAttribute("adminid");
out.println(adminid);
if(brand!=null&&warranty!=null)
{
     int  i=st.executeUpdate("insert into mobile(id,brand,model,price,sim,os,processor,size,camera,weight,battery,warranty,uploadedby,image)values('"+pid+"','"+brand+"','"+model+"','"+price+"','"+sim+"','"+os+"','"+processor+"','"+size+"','"+camera+"','"+weight+"','"+battery+"','"+warranty+"','"+adminid+"','"+image+"')");
     if(i>0)
     {
         out.println("successfully registerd!!");
     }
  } } 
    catch(Exception e)
            {
            out.print("e");
      }
        %>
    <center>
        <form action="mobile.jsp" method="post" onsubmit="return validateform();" name="myform">
            <table class="tb1" id="form1">
                <tr><td>Brand</td><td><input type="text" name="t1" value=""/></td></tr>
                  <tr><td>Model</td><td><input type="text" name="t2" value=""/></td></tr>
                    <tr><td>Price</td><td><input type="text" name="t3"  /></td></tr>
                      <tr><td>Sim</td><td><input type="text" name="t4"  /></td></tr>
                        <tr><td>Os</td><td><input type="text" name="t5" /></td></tr>
                          <tr><td>Processor</td><td><input type="text" name="t6" /></td></tr>
                            <tr><td>Size</td><td><input type="text" name="t7" /></td></tr>
                              <tr><td>camera</td><td><input type="text" name="t8" /></td></tr>
                                <tr><td>weight</td><td><input type="text" name="t9" /></td></tr>
                                  <tr><td>Battery</td><td><input type="text" name="t10"  /></td></tr>
                                    <tr><td>warranty</td><td><input type="text" name="t11"  /></td></tr>
                                    
                                    <tr><td> image<td> <img src="pic1.jpg" width="400px"/> <td><input type="text" name="t12"  /></td>
                                    <tr><td></td><td><input type="submit" value="Add for Sale!!" ></td></tr>
                                    
                                    
            </table>         
            
        </form>
        </center>
    <h5>These informn will be displayed to customers!!!<br>Make sure all informn are corrct!!</h5>
    <form method="post" action="adminprofile.jsp">
        <input type="submit" value="Go to Profile" class="btn">
    </form>
    </body>
    <%@include file="footer.jsp" %>
</html>
