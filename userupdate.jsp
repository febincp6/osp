
<%-- 
    Document   : userupdate
    Created on : Feb 1, 2019, 1:47:14 PM
    Author     : lenovo
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="newcss.css"/>
        <style>
            .tbl{
                border:1px solid black;
                width:700px;
                font-size:20px;
                color:black;
                background-position:right;
                background-color:limegreen;
            }
            
        </style>
    </head>
    <body>
    <center>
        <form action="userupdate.jsp" method="POST">
            <table class="tbl">
                <th>Fill Update Form</th>
                <tr><td>Name</td>
                    <td><input type="text" name="t1" value="" class="btn" /></td></tr>
                <%@include file="connect.jsp" %>
                <% try
                {
                    String name,pwd,mb,add;
                    name=request.getParameter("t1");
                    pwd=request.getParameter("t3");
                    mb=request.getParameter("t4");
                    add=request.getParameter("t5");
                    String s;
                    String email=(String)session.getAttribute("id");
                    String x;
                    out.println("welcome:"+email);
                    %>
                        <tr><td>Email</td><td>
                                <input type="text" name="" class="btn" value="<%out.println(email);%>" disabled />
                    </td>
                    </tr>
                    <% if(name!=null)
                    {
                        int i=st.executeUpdate("update usertbl set name='"+name+"',password='"+pwd+"',mobile='"+mb+"',address='"+add+"' where email='"+email+"'");
                        
                    if(name!=null)
                    {
                        if(i>0)
                        {out.println("Updated");
                    }
                    }
                    }
                }catch(Exception e)
                {
                    out.println("e");
                }
                %>
                <tr>
                    <td>password</td>
                    <td><input type="password" name="t3" value="" class="btn" /></td>
                </tr>
                <tr><td>Mobile Number</td><td><input type="text" name="t4" value="" class="btn" /></td></tr>
                <tr><td>Address</td><td><textarea name="t5" rows="4" cols="20" class="btn">
                        </textarea></td></tr>
                <tr><td></td><td<input type="submit" value="Update" class="btn" /></td></tr>
            </table>
        </form>
    </center>
                <center>
                    <table border="1">
                        <thead>
                            <tr>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <form method="post" action="userprofile.jsp">
                                        <input type="submit" value="Go to Profile" class="btn" />
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </center>
</body>
<%@include file="footer.jsp" %>
</html>