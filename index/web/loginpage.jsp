
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    
    
    
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        <%
        String userid=request.getParameter("uname");
        String pwd=request.getParameter("psw");
        Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Class found.");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                System.out.println("Connection found.");
                
                Statement st = con.createStatement();
            
            ResultSet rs = st.executeQuery("select * from register where email='"+userid+"'");
            if (rs.next())
            {
              if(rs.getString(4).equals(pwd)) 
              {
                  out.println("welcome  "+rs.getString(1));
              }
              else
              {
                  out.println("Invalid password or username");
              }
            }
            else
            {
              out.println("fetching failed!!!!");  
            }
        
        %>
        
    </body>
</html>
