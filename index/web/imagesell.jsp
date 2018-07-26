<%-- 
    Document   : imagesell
    Created on : Jul 21, 2018, 5:15:23 PM
    Author     : NEHA
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ImageUpload</title>
        <link rel="icon" href="logo.png" type="image/x-icon">
        <style>
           
body {
    /* The image used */
    background-image: url("images/4.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    font-size: 20px;
    color:white;
    font-family: lucida-calligraphy;
    height: 100%; 
    
}
div{
    
    border-radius: 25px;
}
</style>
        
    </head>
    
    <form action="sellbookimagedatabase.jsp" method="post" enctype="multipart/form-data">
    
    <body>
        
        <div style="float:left; margin-top:100px; margin-left:100px;  ">
            <br><br>&emsp;
           
                        
        Book Image:&emsp;<input type="file" name="img" accept="image/x-png,image/gif,image/jpeg" onchange="showimg.call(this);" required/>
        <a href="????"><input type="submit" ></a>
        <br><br>
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
        <img src="" id="image" style="display: none; height: 300px; width:350px;" >
        <br><br>
                        
                        
        <script>
       function showimg()
       {
         if(this.files && this.files[0])
         {
             var obj=new FileReader();
             obj.onload=function(data){
             var image=document.getElementById("image");
             image.src=data.target.result;
             image.style.display="block";
         }
         obj.readAsDataURL(this.files[0]);
       }
       }
  
   </script>
   </div>
    </form>
    <%
    
            String namesell=request.getParameter("namesell");
            String contactsell=request.getParameter("contactsell");
            String bnamesell=request.getParameter("bnamesell");
            String wnamesell=request.getParameter("wnamesell");
            String publishersell=request.getParameter("publishersell");
            String editionsell=request.getParameter("editionsell");
            String isbnsell=request.getParameter("isbnsell");
            String selectsell=request.getParameter("selectsell");
            int opricesell=Integer.parseInt(request.getParameter("opricesell"));
            int spricesell=Integer.parseInt(request.getParameter("spricesell"));
            String condition=request.getParameter("condition");
           
         HttpSession two=request.getSession(true);
         two.setAttribute("namesell",namesell);
         two.setAttribute("contactsell",contactsell);
         two.setAttribute("bnamesell",bnamesell);
         two.setAttribute("wnamesell",wnamesell);
         two.setAttribute("publishersell",publishersell);
         two.setAttribute("editionsell",editionsell);
         two.setAttribute("isbnsell",isbnsell);
         two.setAttribute("selectsell",selectsell);
         two.setAttribute("opricesell",opricesell);
         two.setAttribute("spricesell",spricesell);
         two.setAttribute("condition",condition);
         %>
    </body>
</html>
