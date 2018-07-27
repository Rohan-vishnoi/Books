<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
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

  <span id="cart" class="glyphicon glyphicon-shopping-cart" style="float:right; margin-top: 40px; margin-right:70px; height:80px;"></span>
    




  <!-- Button trigger modal -->

  <!--Register Button Coding-->
  
 <% session= request.getSession(false);
             if(session.getAttribute("sessname")==null)
             { %>
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
    <label for="name"><span class="req">* </span><b>Your Name</b></label>
    <input type="text" placeholder="name" name="name"  required>

    <label for="number"><span class="req">*</span><b>Mobile Number</b></label>
    <input type="text" placeholder="Mobile no" id="phone" name="number"  maxlength="14" onkeyup="validatephone(this);">

    <label for="email"><span class="req">*</span><b>Email</b></label>
    <input type="text" required placeholder="Enter Email" id="email" name="email" onchange="email_validate(this.value);">

    <label for="psw"><span class="req">*</span><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="pass1" minlength="4" maxlength="16" required>

    <label for="psw-repeat"><span class="req">*</span><b>Confirm Password</b></label>
    <input type="password" placeholder="Repeat Password"minlength="4" id="pass2" maxlength="16" placeholder="Enter again to validate" name="psw-repeat" onkeyup="checkPass(); return false;" required>
    <hr>

    <p>By creating an account you agree to our Terms & Privacy.</p>
    <br>
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
 <!--Register button end-->
   <!-- Button trigger modal -->
   
   
   
   
   
   <!-- Login button start-->
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
       <button type="button" class="btn btn-primary" data-target="#exampleModalLong" >Register</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div> 
<!--Login coding ends-->
<% }
%>



<div class="welcome" style="float:right; font-size:18px; margin-top: 40px; margin-right: 50px;">
 <%  session= request.getSession(false);
             if(session.getAttribute("sessname")!=null)
             {
                 try{
                  Class.forName("com.mysql.jdbc.Driver");
                 }catch(Exception ex)
                 {
                     out.print(ex);
                 }
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
              
                String sql="select * from register where email=?";
               PreparedStatement ps=con.prepareStatement(sql);
               ps.setString(1, session.getAttribute("sessname").toString());
               ResultSet rs=ps.executeQuery();
               if (rs.next())
              {
             
                  out.println("Welcome  "+rs.getString(1));
              
                       
                   out.println("<form action=\"logout.jsp\" method=\"post\">");
                  out.println("<input type=\"submit\" name=\"logout\" value=\"Logout\">");
                  out.println("</form>");
                 
              }
              else
              {
              out.println("invalid password");
                  }
               
                 
             }
            
        %>  
</div>
<script>
    var Msg='<%=session.getAttribute("getAlert")  %>';
    if(Msg != "null"){
        function alertName{
            alert("Invalid Username or password");
        }
    }
    
    </script>
    
</div>
</div>
<!--navigation bar-->             
<div class="navbar navbar-light bg-primary" style="background-color: #579ed2;">
<div class="container-fluid">
<ul class="nav navbar-nav navbar-left">
<li><a href="sellSchool.jsp" style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> SchoolBooks </a></li>
<li><a href=" sellEngg.jsp " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Engineering </a></li>
<li><a href=" sellMedical.jsp " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Medical </a></li>
<li><a href=" sellCommerce.jsp " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Commerce </a></li>
<li><a href="  sellArts.jsp" style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Arts </a></li>
<li><a href=" sellNovels.jsp " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Novels </a></li>
<li><a href=" sellOthers.jsp " style="color:white"><span class="glyphicon glyphicon-book" style="color:white"> </span> Others </a></li>

    </ul>
    <ul class="nav navbar-nav navbar-right">
        
    <li> 
      
    <a href="searchbar.jsp"><button style="height:36px; float:right; margin-right: 10px; color:black"><i class="glyphicon glyphicon-search"></i></button></a>
    </li>
    </ul>
    </div>  
</div>
    
 
    
    
<!--image slider-->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
     <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/pmlogo.png" alt="Books" style="height:320px; width:100%" >
    </div>
    <div class="item ">
      <img src="images/3.jpg" alt="Books" style="height:320px; width:100%" >
    </div>

    <div class="item">
      <img src="images/selll.png" alt="Books" style="height:320px; width:100%">
    </div>

    <div class="item">
      <img src="images/rent.png" alt="Books" style="height:320px; width:100%">
    </div>
  </div>

   <!--Left and right controls -
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>-->
</div>


<!--main section of sell, buy and rent-->

<div class="main">
<div class="sell">
    <a href="buy.jsp"><img src="images/sell.png" style="height:200; width:297px"></a>
<p class="usage">Buy Books</p>
<p style=" margin-left:15px;
    font-size:15px;
    text-align: center;
    font-family: 'Times New Roman'; ">Just one BOOK away from good mood. </p>
<br>

</div>
<div class="buy">

<a href="sellbook.jsp"><img src="images/buyy.png" style="height:200; width:297px"></a>
<p class="usage">Sell Books</p>
<p  style="margin-left:15px;
    font-size:15px;
    text-align: center;
    font-family: 'Times New Roman';" >So many Books & so little time. </p>
</div>
<div class="rent">
<a href="renting.jsp"><img src="images/rentt.png" style="height:200; width:297px"></a>
<p class="usage">Rent Books</p>
<p  style="margin-left:15px;
    font-size:15px;
    text-align: center;
    font-family: 'Times New Roman';">Old BOOKS gives golden path.</p>
</div>
</div>
<!-- section closes-->






<div class="introdiv">
<h3 id="ques">How Should you Sell or Buy Books from PustakMarket?</h3><br>
<p id="ans">We pride ourselves in being buyback price comparison tool.<br> In addition to helping you get rid of your old textbooks we also offer:</p>
<br><br>
<div class="row">
<div class="intro1">
    <img src="images/bestprice.png" height="80px" style="margin-left:90px; margin-top: 20px" ><br/>
  <p class="intropara">
<h3>Best Price </h3>
<br>
With one simple search we connect you to various companies buying used textbooks online. By comparing textbook buyback prices, we ensure you receive the best prices for your textbooks.  Shipping is free and you're often paid the same day your book is received.
  </p>
  </div>
  <div class="intro2">
      <img src="images/settings.png" height="80px" style="margin-left:90px; margin-top: 20px" /><br/>
 <p class="intropara">
<h3>On Rent</h3>
<br><p>
With one simple search we connect you to various companies buying  used textbooks online. By comparing textbook buyback prices, we ensure you receive the best prices for your textbooks.  Shipping is free and you're often paid the same day your book is received.
  </p>
  </div>
  <div class="intro3">
 <p class="intropara">
<h3>How it Works</h3>
<span style="align:center"><img src="images/work.png" alt="cycle" height="300px" width="320px"></span>
<br>
  </p>
</div>
</div>
</div>

<!--footer start-->
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

<script>
function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 
function validatephone(phone) 
{
    var maintainplus = '';
    var numval = phone.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.?\/<>?|`¬\]\[]/g,'');
    phone.value = maintainplus + curphonevar;
    var maintainplus = '';
    phone.focus;
}
// validates text only
function Validate(txt) {
    txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
}
// validate email
function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

    if(regMail.test(email) == false)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("status").innerHTML	= "<span class='valid'>Thanks, you have entered a valid Email address!</span>";	
    }
}
// validate date of birth
function dob_validate(dob)
{
var regDOB = /^(\d{1,2})[-\/](\d{1,2})[-\/](\d{4})$/;

    if(regDOB.test(dob) == false)
    {
    document.getElementById("statusDOB").innerHTML	= "<span class='warning'>DOB is only used to verify your age.</span>";
    }
    else
    {
    document.getElementById("statusDOB").innerHTML	= "<span class='valid'>Thanks, you have entered a valid DOB!</span>";	
    }
}
// validate address
function add_validate(address)
{
var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;
  
    if(regAdd.test(address) == false)
    {
    document.getElementById("statusAdd").innerHTML	= "<span class='warning'>Address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("statusAdd").innerHTML	= "<span class='valid'>Thanks, Address looks valid!</span>";	
    }
}

function alert1(){
    var Msg = '<%=session.getAttribute("getAlert") %>';
    if(Msg != "null"){
        <% session.invalidate(); %>
            alert("Invalid Username or password");
    }
           }

</script>



<script type="text/javascript"> 
        window.onload =  alert1(); 
            </script>
    
<!--footer end-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>