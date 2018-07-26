<%-- 
    Document   : give
    Created on : Jul 19, 2018, 4:24:41 PM
    Author     : NEHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <title>Give</title>
        <link rel="icon" href="logo.png" type="image/x-icon">
        <style>
           
body {
    
    opacity: 5.5;
    font-size: 20px;
    color:white;
    font-family: lucida-calligraphy;
    height: 100%;   
} 
#img{
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    
}
    
        </style>
        
        <script>
    function submitted() {
    alert("Thank You,for Renting Your Book");
}


</script>
        
    </head>
    <body>
        <%@ include file = "header.jsp" %> 
        <div style="background-image:url(images/sr.jpg)" id="img" class="container">
        <form action="image.jsp" method="post">           
        <div class="container" style="width:30%">
        <h2 style="font-family:algerian; font-size: 40px; color: black; text-align: center"> GIVE ON RENT </h2>
        
        Seller's Name:<input type="text" name="namerent" required>
         <br><br>
        Contact number:<input type="text" name="contactrent"  maxlength="10" pattern="[7-9]{1}[0-9]{9}" required>
        <br><br>
        Book Name:<input type="text" name="bnamerent" required>
         <br><br>
        Author:<input type="text" name="wnamerent" required>
        <br><br>
        Publisher:<input type="text" name="publisherrent" required>
       <br><br>
        Edition:<input type="text" name="editionrent" required>
        <br><br>
        ISBN Number:<input type="text" name="isbnrent" required>
        <br><br>
        Book Stream:
        
        <select name="selectrent" required style="width:30%">
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
        Original Price:<input type="text" name="edition" maxlength="4" required>
        
        <br><br>
        Book Condition:
        <input type="radio" name="condition" value="Average">Average &ensp;
        <input type="radio" name="condition" value="Good">Good &ensp;
        <input type="radio" name="condition" value="Excellent">Excellent<br><br>
        <input type="submit" name="next" value="Next" style="margin-left: 100px">
           <br/>
           <br/>
          </div>
           
          </form>
        </div>
    
             <%@ include file = "footer.jsp" %>    
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    </body>
</html>
