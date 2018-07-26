<%-- 
    Document   : sellbook
    Created on : Jul 19, 2018, 12:00:24 AM
    Author     : NEHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sell</title>
        <link rel="icon" href="logo.png" type="image/x-icon">
        <style>
           
body {
    /* The image used */
    background-image: url("images/4.jpg");
   font-size: 18px;
   color:white;
   font-family: lucida-calligraphy;
    height: 100%; 

    background-repeat: no-repeat;
     background-position: center;
    background-size: cover;
   
} 
    
        </style>
        
    </head>
    <body>
        <form action="imagesell.jsp" method="post">
            <center>
           
        <h1 style="font-family:algerian; font-size: 40px; color: lightyellow"> SELL BOOK DETAILS </h1>
        
      
        Seller's Name:&emsp;&emsp;&ensp;<input type="text" name="namesell" required>
         <br><br>
        Contact number:&emsp;&ensp;<input type="text" name="contactsell" required>
        <br><br>
        Book Name:&emsp;&emsp;&emsp;&nbsp;<input type="text" name="bnamesell" required>
         <br><br>
        Author:&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<input type="text" name="wnamesell" required>
        <br><br>
        Publisher:&emsp;&emsp;&emsp;&emsp;&nbsp;<input type="text" name="publishersell" required>
       <br><br>
        Edition:&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="editionsell"required>
        <br><br>
        ISBN Number:&emsp;&emsp;<input type="text" name="isbnsell" required>
        <br><br>
        Book Stream:&emsp;&emsp;&ensp;
        
        <select name="selectsell" style="width:170px; height:24px; " required>
            <option>Select</option>
  <option value="School">School</option>
  <option value="Engineering">Engineering</option>
  <option value="Medical">Medical</option>
  <option value="Commerce">Commerce</option>
  <option value="Arts">Arts</option>
  <option value="Novels">Novels</option>
  <option value="other">other</option>
</select>
        <br><br>
        Original Price:&emsp;&emsp;&ensp;<input type="text" name="opricesell" required>
        <br><br>
        Selling Price:&emsp;&emsp;&emsp;<input type="text" name="spricesell" required>
        
        <br><br>&emsp;&emsp;&emsp;&emsp;&ensp;
        Book Condition:&emsp;
             <input type="radio" name="condition" value="Average">Average &ensp;
             <input type="radio" name="condition" value="Good">Good &ensp;
             <input type="radio" name="condition" value="Excellent">Excellent<br><br>
              
       <input type="submit" name="next" value="Next">
          
          </form>
            
            </center>
    </body>
</html>
