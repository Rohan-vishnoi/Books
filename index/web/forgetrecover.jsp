<%-- 
    Document   : recovery page of forget password
    Created on : 19 Jul, 2018, 4:38:52 PM
    Author     : krishna rathi
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>recovery page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        <%
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Class found.");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                System.out.println("Connection found.");
                
                PreparedStatement st = con.prepareStatement("update register set passss=? where email=?");
                PreparedStatement st1 = con.prepareStatement("update register set repass=? where email=?");
                st.setString(2,email);
                st.setString(1,pass);
                st1.setString(2,email);
                st1.setString(1,pass);
                
  
                int i=st.executeUpdate();
                int j=st1.executeUpdate();
                if(i>0 && j>0)
                {
                    out.println("Password Updated Succesfully");
                }
                else
                {
                   out.println("Sorry!!!.. Some error occured");
                }
           
            %>
    </body>
</html>
