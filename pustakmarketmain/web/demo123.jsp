<%-- 
    Document   : demo
    Created on : 25 Jul, 2018, 5:54:20 PM
    Author     : user pc
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Details</title>
        <script>
function myfunc(){
var y = document.getElementById("price").value;
var payment= y*5;
var total = payment+300;
document.getElementById('payment').innerHTML = '₹'+payment;
document.getElementById('total').innerHTML = '₹'+total ;
}

</script>

        
    </head>
   <body>
       
       <%@include file="header.jsp" %>
       
       
       <div style="height:100%">
       
       
        <%
        
        Class.forName("com.mysql.jdbc.Driver");     
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");

                PreparedStatement pstmt = con.prepareStatement("select * from booksell where isbnno=?");
                pstmt.setString(1, request.getParameter("isbn"));
                
                 ResultSet rs= pstmt.executeQuery();
                  InputStream is=null;
                 while(rs.next()){
                     
                is=rs.getBinaryStream("bookimage"); 
                   String aaa="C:/Users/Dell_PC/Documents/NetBeansProjects/pustakmarketmain/web/cartmain/photo.jpg";
                int byteRead=0;
            OutputStream os=new FileOutputStream(aaa);
            byte[] buffer=new byte[500000];
            
            while((byteRead=is.read(buffer))!=-1){
               os.write(buffer,0,byteRead);
            }
                  
                    
    %>
    <div class="container">
      <div class="row"  style="background:linear-gradient( white,lightblue);">
  <div class="column" >
   <img src="cartmain\photo.jpg" alt="Northern Lights" class="img-thumbnail" width="500px" height="480px">
  </div>
  <div class="column" >
   
   <h2><%=rs.getString("bname")%> </h2>
		    <div class="texxt">
                        <div class="text1 text2" style="font-size:25px; color:blue;">₹ <%=rs.getString("sprice")%></div>
                                 </div>
                                
                                
                                
                   
			<div class="auth">
				<span><br>Author:-<%=rs.getString("author")%></span><div class="aname">
                                    
			
			
			<div class="class3">Highlights:</div>
		   <ul>
		<li  class="list1">Book Condition: <%=rs.getString("condition")%></li>
		<li  class="list1">Publisher: <%=rs.getString("publisher")%></li>
		
		<li  class="list1">ISBN: <%=rs.getString("isbnno")%></li>
		<li  class="list1">Edition: <%=rs.getString("edition")%></li>
		</ul>
                        
         </div>
                 
           <br>
		 
           <div class="wrapper">
        <a href="#" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
        </a><!--
		 <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon"></span> buy
        </button>-->
		<a href="buynow.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span> Buy
        </a>
  </div>
</div> 
                               </div>
                 </div>
        <%
        }
con.close();
        %>  
       
          </div>
        </div>
        <div class='container'>
        <%@ include file="footer.jsp"%>
        </div>
   </body> 
</html>
