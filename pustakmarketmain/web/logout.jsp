<%-- 
    Document   : logout
    Created on : 27 Jul, 2018, 12:44:41 AM
    Author     : user pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            session.invalidate();
            session=request.getSession();
            response.sendRedirect("index1.jsp");
        %>
    </body>
</html>
