<%-- 
    Document   : cloths.jsp
    Created on : Feb 15, 2019, 4:40:08 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloths</title>
        <link rel="style sheet" href="newcss.css"/>
        <script>
            function valid()
            {
              var x=document.forms["myform"]["t1"].value;
              var y=document.forms["myform"]["t2"].value;
              var a=document.forms["myform"]["t3"].value;
              var b=document.forms["myform"]["t4"].value;
              var c=document.forms["myform"]["t5"].value;
              var d=document.forms["myform"]["t6"].value;
              if(x==""||x==null)
              {
                  alert(" Required Field must ntr Brand Name");
                  return false();
              }
              if(y==""||y==null)
              {
                  alert(" Required Field must ntr prize Name");
                  return false();
              }
              if(y==""||y==null)
              {
                  alert(" Required Field must ntr price of Product");
                  return false();
              }
              if(a==""||a==null)
              {
                  alert(" Required Field must ntr for person");
                  return false();
              }
              if(b==""||b==null)
              {
                  alert(" Required Field must ntr type of cloths");
                  return false();
              }
              if(x==""||x==null)
              {
                  alert(" Required Field must ntr size of cloth");
                  return false();
              }
              if(x==""||x==null)
              {
                  alert(" Required Field must ntr color if mixed then ntr mixed");
                  return false();
              }
            }
        </script>
    </head>
    <body>
        <%@include file="connect.jsp" %>
        <% try
            {
                String adminid=((String)session.getAttribute("adminid"));
                out.println("Welcome:"+adminid+"<br>");
                String brand,price,forperson,type,size,color;
                brand=request.getParameter("t1");
                price=request.getParameter("t2");
                forperson=request.getParameter("t3");
                type=request.getParameter("t4");
                size=request.getParameter("t5");
                color=request.getParameter("t6");
               // int i;
                //int j=0;
                
                   
                    
               
                 int countid=0;
                if(brand!=null&&color!=null)
                {
                    ResultSet rs=st.executeQuery("select count(*) from cloths");
                    
                  if(rs.next())
                    {
                        
                        countid=Integer.parseInt(rs.getString(1));
                    }  
                
                 int  i=st.executeUpdate("insert into cloths(id,brand,price,forperson,type,size,color,uploadedby)values('"+countid+"','"+brand+"','"+price+"','"+forperson+"','"+type+"','"+size+"','"+color+"','"+adminid+"')");   
                if(i>0)
                {
                    out.println("successfully added!!");
                }
               /* else
                {out.print("not added");
                } */
            
                }
            
            }
                catch(Exception e)
                        {
                        out.print(e);
                   }%>
                                                   
        
        <h3 style="color:black;">Enter Details of Your cloth product</h3>
    <center>
        <form method="Post" action="cloths.jsp" onsubmit="return  valid();" name="myform">
            <table class="tbl">
                <tr>
                    <td>Brand</td>
                    <td><input type="text" name="t1" value="" class="btn"/></td>
                </tr>
                 <tr>
                    <td>Price</td>
                    <td><input type="text" name="t2" value="" class="btn"/></td>
                </tr>
                <tr>
                    <td>For person</td>
                    <td><input type="radio" name="t3" value="Men" />Men
                <input type="radio" name="t3" value="Women" />Women
                <input type="radio" name="t3" value="Girl" />Girl
                <input type="radio" name="t3" value="Boy" />Boy
                    </td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                <input type="radio" name="t4" value="shirt" />Shirt
                <input type="radio" name="t4" value="pant" />Pant
                <input type="radio" name="t4" value="saree" />Saree
                <input type="radio" name="t4" value="Kurti" />Kurti/Laggi
            </td>
                </tr>
                <tr><td>size</td><td><input type="text" name="t5" value="" /></td></tr>
                <tr><td>color</td><td><input type="text" name="t6" value=""  /></td> 
                <tr><td></td><td><input type="submit" value="Add to Sale" class="btn"/></td>
                    
                </tr>
            </table>
        </form>
    </center>
    <h5 style="color:black;">These information will be displayed to customers!!!<br>Make Sure All information are correct!!</h5>
    <form method="post" action="adminprofile.jsp">
        <input type="submit" value="Go to Profile"  class="btn"/>
    </form>
</body>
<%@include file="footer.jsp"%>
</html>
