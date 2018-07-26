<%-- 
    Document   : renting
    Created on : Jul 19, 2018, 12:57:42 PM
    Author     : NEHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

    <title>Rent</title>
    <link rel="icon" href="logo.png" type="image/x-icon">
      <style>
           
    body {
    /* The image used */
    background-image: url("images/4.jpg");
    color:black;
    font-family: lucida-calligraphy;
    height: auto; 
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    } 

    img:hover { 
              border:2px solid red; 
              box-shadow: 0 0 10px #333;  
              }
          
    modal-body{
              font-family: sans-serif;
            
              }
   </style>
  </head>
  <body>
      
      
      
     <center>
         <br>
         <h1 style="font-family:algerian; font-size: 80px; color: lightyellow"> ON RENT  </h1><br><br>
        <div>
        <div  style="height:350px;width:350px;float:left; margin-left: 250px; border-radius:25px;">
        <img type="button"  data-toggle="modal" data-target="#exampleModalCenter" src="images/g.png" id="give" style="height:350px;width:350px;border-radius:25px;"/>
        </div>
        <div style="height:350px;width:350px;float:left; margin-left: 150px; border-radius:25px;">
        <img type="button"  data-toggle="modal" data-target="#exampleModalCenter1" src="images/t.png" id="take" style="height:350px;width:350px;border-radius:25px;"/>
        </div>
        </div>
         
         <!-- Modal -->
         <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content">
         <div class="modal-header">
         <h5 class="modal-title" id="exampleModalLongTitle"><h3>Terms & Condition</h3>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
         </button>
         </div>
         <div class="modal-body">
         
         <p>Conditions for rent
         <br>
        1. one book can be lend for 7 days minimum.
        <br>
        2. Fixed deposit is Rs.300/-
        <br>
        3. Per day lending is as follows:-<br>
         (i) if Book price is less than 500 then 3/- per day.<br>
         (ii) if Book price is between 500/- and 1000/- then 5/- per day.<br>
         (iii) if book price is more than 7/- then 7/- per day.<br>
        
         </p>
         </div>
         <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="location.href='give.jsp';">Accept</button>
         <button type="button" class="btn btn-primary" onclick="location.href='renting.jsp';">Decline</button>
         </div>
         </div>
         </div>
         </div>
         
         <!-- Modal -->
         <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content">
         <div class="modal-header">
         <h5 class="modal-title" id="exampleModalLongTitle"><h3>Terms & Condition</h3>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
         </button>
         </div>
         <div class="modal-body">
         
         <p>Conditions for sell
         <br>
        1. one book can be lend for 7 days minimum.
        <br>
        2. Fixed deposit is Rs.300/-
        <br>
        3. Per day lending is as follows:-<br>
         (i) if Book price is less than 500 then 3/- per day.<br>
         (ii) if Book price is between 500/- and 1000/- then 5/- per day.<br>
         (iii) if book price is more than 7/- then 7/- per day.<br>
        
         </p>
         </div>
         <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="location.href='take.jsp';">Accept</button>
         <button type="button" class="btn btn-primary" onclick="location.href='renting.jsp';">Decline</button>
         </div>
         </div>
         </div>
         </div>
      </center>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
  </body>
</html>