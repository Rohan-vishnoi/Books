<%-- 
    Document   : school
    Created on : 23 Jul, 2018, 5:53:43 PM
    Author     : krishna 
--%>
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
         <%@page import="java.io.*"%>
         <%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 250px;
}
.takeimage{
    width:100%;
    height:1000px;
    background: linear-gradient(white,lightblue);
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
   
    text-align: center;
    font-family:"Times New Roman";
    font-size:18px;
    text-align:center;
    
}
</style>
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/F8E7BB27-32D2-0D4E-897B-C963F9A82A89/main.js" charset="UTF-8">
    
</script>
</head>
<body>
<div class="container">
<!--header start-->
<div class="topnav">
<div class="header">
<a href="#default" class="logo"><img src="images/mainpmlogo.png" width="180" height="80"  ></a>

  <span id="cart" class="glyphicon glyphicon-shopping-cart" style="float:right; margin-top: 40px; margin-right:70px; height:60px;"></span>
      <!-- Button trigger modal -->
<button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalLong" style="float:right; margin-top: 30px; margin-right: 25px; font-family:">
  Register
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="register.jsp" method="post">
  <div class="container1">
    <h1>Create Account</h1>
    
    <hr>
    <label for="name"><b>Your Name</b></label>
    <input type="text" placeholder="Eva Juned" name="name" required>

    <label for="number"><b>Mobile Number</b></label>
    <input type="text" placeholder="Mobile no" name="number" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw-repeat"><b>Confirm Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    <hr>

    <p>By creating an account you agree to our Terms & Privacy.</p>
    <a href=""><button type="submit" class="registerbtn">Submit</button></a>
  </div>

 
  
</form> 
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-primary">Sign in</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 
   <!-- Button trigger modal -->
<button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalLong1" style="float:right; margin-top:30px; margin-right: 15px;">
  Login
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="loginpage.jsp" method="post">
  <div class="container1">
    <h1>Login</h1>
    
    <hr>
    <label for="name"><b>Username</b></label>
    <input type="text" placeholder="Eva@gmail.com" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
<a href="forgetpass.jsp"><p>Forget Password</p></a>
    <button type="submit" class="registerbtn">Login</button>
  </div>

 </form> 
      </div>
      <div class="modal-footer">
       <a href="register.html"><button type="button" class="btn btn-primary">Sign Up</button></a>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div> 
</div>
</div>
<!--navigation bar-->             
<div class="navbar navbar-light bg-primary" style="background-color: #579ed2;">
<div class="container-fluid">
<ul class="nav navbar-nav navbar-left">
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> SchoolBooks </a></li>
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Engineering </a></li>
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Medical </a></li>
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Commerce </a></li>
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Arts </a></li>
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Novels </a></li>
<li><a href="  " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Others </a></li>

    </ul>
    <ul class="nav navbar-nav navbar-right">
        
    
    </ul>
    </div>  
</div>
    <div class="takeimage">
        <%
             Class.forName("com.mysql.jdbc.Driver");     
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");

                PreparedStatement pstmt = con.prepareStatement("select * from booksell where stream=?");
                pstmt.setString(1, "School");
                
                 ResultSet rs= pstmt.executeQuery();
                InputStream is=null;
                int counter=0;
                 while(rs.next())
                 {
                     counter=counter+1;
                     is=rs.getBinaryStream("bookimage"); 
                   String aaa="C:/Users/Dell_PC/Documents/NetBeansProjects/pustakmarketmain/web/sellretrival/School/photo"+counter+".jpg";
                int byteRead=0;
            OutputStream os=new FileOutputStream(aaa);
            byte[] buffer=new byte[500000];
            
            while((byteRead=is.read(buffer))!=-1){
               os.write(buffer,0,byteRead);
            }
                   String bbb="sellretrival/School/photo"+counter+".jpg";
                     %>
                      <div class="gallery">
                
                    <img src="<%=bbb%>" alt="5Terre" style="width:250px;height:250px; border:4px solid black;" >
                
                <div class="desc" style="width:250px; height:200px; font-size: 18px; font-family:'Times new Roman' ">
                    <table>
                    <tr><h3>Book Details</h3></tr>
                    <tr><td>Book Name:</td><td><%=rs.getString("bname")%></td></tr>
                    <tr><td>Author:</td><td><%=rs.getString("author")%></td></tr>
                    <!--<tr><td>Publisher:-</td><td><%=rs.getString("publisher")%></td></tr>
                    <tr><td>Edition:-</td><td><%=rs.getString("edition")%></td></tr>
                    <tr><td>ISBN No.:-</td><td><%=rs.getString("isbnno")%></td></tr>
                    <tr><td>Original Price:-</td><td><%=rs.getString("oprice")%></td></tr>
                    <tr><td>Selling Price:-</td><td><%=rs.getString("sprice")%></td></tr>
                    <tr><td>Book Condition:-</td><td><%=rs.getString("condition")%></td></tr>-->
                    <!--<input type="button"  onclick="location.href='demo123.jsp?isbn=<%=rs.getString("isbnno")%>';" value="Take on Rent"/>
                  -->  <button type="button" class="btn btn-success" onclick="location.href='demo123.jsp?isbn=<%=rs.getString("isbnno")%>';">Further Details</button>
                    </table>
                </div>
              </div>
              <%   
              os.close();      
            }

                 con.close();
                pstmt.close();
                 %>
               </div> 
      <div class="footer">
<img src="images/fimage.png" style="height:50px; margin-top:40px; margin-left:90px; position:relative"><br>
<img src="images/fb-icon.png" class="links" style="margin-left: 3%; float:left" >
<img src="images/google.png" class="links" style="margin-left: 1%; float:left" >
<img src="images/instagram.png" class="links"  style="height:60px; width:60px; margin-left:1%; float:left ">
<img src="images/twitter.png" class="links" style="margin-left: 1%; float:left">

<a href="contactus.html"><p class="contactus">CONTACT US</p></a>
<a href="ourteam.html"><p class="contactus">OUR TEAM</p></a>
<a href="faq.html"><p class="contactus">FAQs</p></a>
<p class="copyright">Copy Right 2018 Pustak Market,LLC| All Rights Reserved</p>
<p class="terms"  style="margin-right:55px;">Privacy</p>
<p class="terms">Terms</p> 
</div>

</div>

    </body>
</html>
