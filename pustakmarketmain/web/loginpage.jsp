
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
            
                 if(request.getParameter("uname")!=null)
                 {
 
                       String userid=request.getParameter("uname");
                       String pwd=request.getParameter("psw");
                       Class.forName("com.mysql.jdbc.Driver");
               
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
               
                String sql="select * from register where email=? ";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1,userid);
               ResultSet rs=ps.executeQuery();
               if (rs.next())
              {
                            if(rs.getString(4).equals(pwd))
                            {
                                 session= request.getSession();
                                 session.setAttribute("sessname", userid);
                                 response.sendRedirect("index1.jsp");
                             }
                             else
                             {
                             session.setAttribute("getAlert","Yes");
                            response.sendRedirect("index1.jsp");
                             
                             }
              }
               else
               {
                session.setAttribute("getAlert","Yes");
                response.sendRedirect("index1.jsp");
               }
            }
            
        %>
        
       
    </body>
</html>
