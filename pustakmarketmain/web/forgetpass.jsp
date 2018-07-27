
<%-- 
    Document   : recovery page for forget password(main)
    Created on : 19 Jul, 2018, 4:38:52 PM
    Author     : krishna rathi
--%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
        <title>forget pass</title>
    </head>
    <body>
     <%@ include file = "header.jsp" %> 
      <div class="container" style="width:50%; font-size: 15px; ">
            <form action="forgetrecover.jsp" method="post">
                <h3> Enter details to recover your password: </h3><br><br>
                Username: <input type="text" name="email"><br><br>
                New-Password:<input type="password" name="pass"><br><br>
                Conform-Password: <input type="password" name="cpass"><br><br>
                <input type="submit" value="Submit" name="click"><br><br>
                </form>
           </div>
        
        
        <%@ include file = "footer.jsp" %>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    </body>
</html>
