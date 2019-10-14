<%-- 
    Document   : feedbak
    Created on : Aug 14, 2019, 9:37:23 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>
<%@include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feed back</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%String feed_back=request.getParameter("feedback");
        out.println(feed_back);
        // String feed_back=request.getParameter("feedback");
        String email=(String)session.getAttribute("useremail");
                                      int  i=st.executeUpdate("insert into purchase(feedback)value('"+feed_back+"')");
     if(i>0)
     {
         out.println("successfully registerd!!");
     }%>
    </body>
</html>
<%@include file="footer.jsp" %>