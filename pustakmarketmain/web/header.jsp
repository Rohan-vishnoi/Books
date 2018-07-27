<%-- 
    Document   : header
    Created on : Jul 25, 2018, 10:49:59 PM
    Author     : Aarzoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">

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
        
    
    <button type="submit" style="height:48px; float:right; margin-top:-63px; color:black"><i class="glyphicon glyphicon-search"></i></button>
   
    </ul>
    </div>  
</div>
    
   </div> 
    </body>
</html>
