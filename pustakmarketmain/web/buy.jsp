
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <style>
       @import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,700,400italic);

.thumbnail {
    position: relative;
    padding-top: 30px;
    margin-bottom: 20px;
}

.thumbnail img {
    width: 100%;
}
      
      </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Buy</title>
    <link rel="icon" href="logo.png" type="image/x-icon">
    
  </head>
  <body>
       <div class="container">
<div class="topnav">
<div class="header">
<a href="#default" class="logo"><img src="images/mainpmlogo.png" width="180" height="80"  ></a>

  <span id="cart" class="glyphicon glyphicon-shopping-cart" style="float:right; margin-top: 40px; margin-right:70px; height:60px;"></span>
      <!-- Button trigger modal -->
     
</div>
    </div>
  <div>
 <div class="navbar navbar-expand-lg navbar-dark bg-primary" style="background-color: #579ed2;">
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
  </div>
    
  
            <div style="height:100%; background: linear-gradient(white,lightblue)">
          <div class="row">
            
            <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellSchool.jsp"><img src="images/school.jpg" alt="" class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>SCHOOL</h4>
                </div>
              </div>
            </div>
    
            <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellEngg.jsp"><img src="images/engineering.jpg" class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>ENGNEERING</h4>
                   
                </div>
              </div>
            </div>
    
            <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellMedical.jsp"> <img src="images/medical.jpg" class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>MEDICAL</h4>
                    
                </div>
              </div>
            </div>
    
            <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellCommerce.jsp"> <img src="images/commerce.jpg" class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>COMMERCE</h4>
                </div>
              </div>
            </div>
              <br>
              <br>
              <br>
              
               <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellArts.jsp"><img src="images/arts.png" alt=""class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>ARTS</h4>
                    
                </div>
              </div>
            </div> <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellNovels.jsp"><img src="images/novle.jpg" alt=""class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>NOVELS</h4>
                    
                </div>
              </div>
            </div> <div class="col-xs-18 col-sm-6 col-md-3">
              <div class="thumbnail">
                  <a href="sellOthers.jsp"> <img src="images/other.jpg" alt=""class="img-thumbnail"></a>
                  <div class="caption">
                    <h4>OTHERS</h4>
    
                </div>
              </div>
            </div>
            
          </div><!-- End row -->
       
    
    </div><!-- End container -->
      <%@ include file = "footer.jsp" %>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
  </body>
</html>
