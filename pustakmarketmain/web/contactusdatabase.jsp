<%-- 
    Document   : contactusdatabase
    Created on : 20 Jul, 2018, 11:27:24 PM
    Author     : krishna rathi
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact us</title>
    </head>
    <body>
        
         <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        
        
         <%
             String s1=request.getParameter("firstname");
            String s2=request.getParameter("lastname");
            String s3=request.getParameter("subject");
            String s4=request.getParameter("message");
            
            Class.forName("com.mysql.jdbc.Driver");     
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
             String sql="insert into contactus(firstname,lastname,subject,message)values(?,?,?,?)"; 
            PreparedStatement pstmt = con.prepareStatement(sql);
                pstmt.setString(1, s1);
                pstmt.setString(2, s2);
                pstmt.setString(3, s3);
                pstmt.setString(4, s4);
              int count = pstmt.executeUpdate();
                if(count>0)
                {
                out.println("insert successfully");
                }
                else
                {
                out.println("not successfully");
                }  

            
             %>
        
    </body>
</html>
