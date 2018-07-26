<%-- 
    Document   : register
    Created on : 19 Jul, 2018, 3:10:10 PM
    Author     : user pc
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
    </head>
    <body>
         <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        
        <%
        
            String s1=request.getParameter("name");
            session.putValue("name",s1);
            String s2=request.getParameter("number");
            String s3=request.getParameter("email");
            String s4=request.getParameter("psw");
            String s5=request.getParameter("psw-repeat");
           
            
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                
                String sql = "INSERT INTO register VALUES ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
                Statement rs = con.createStatement();
            
            int insert = rs.executeUpdate(sql);
            
       out.println(" Information inserted successfully!");
        %>
    </body>
</html>
