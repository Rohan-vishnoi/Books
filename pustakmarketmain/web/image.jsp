

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
    background-image: url("images/sr.jpg");
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
    
    <form action="rentjsppage.jsp" method="post" enctype="multipart/form-data">
    
    <body>
        
        <div style="float:left; margin-top:100px; margin-left:100px;  ">
            <br><br>&emsp;
           
                        
        Book Image:&emsp;<input type="file" name="img" accept="image/x-png,image/gif,image/jpeg" onchange="showimg.call(this);" required/>
       <a href="???????"> <input type="submit" ></a>
        <br><br>        
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
        <img src="" id="image" style="display: none; height: 300px; width:350px;">
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
    
            String namesell=request.getParameter("namerent");
            String contactsell=request.getParameter("contactrent");
            String bnamesell=request.getParameter("bnamerent");
            String wnamesell=request.getParameter("wnamerent");
            String publishersell=request.getParameter("publisherrent");
            String editionsell=request.getParameter("editionrent");
            String isbnsell=request.getParameter("isbnrent");
            String selectsell=request.getParameter("selectrent");
            int opricesell=Integer.parseInt(request.getParameter("edition"));
            String condition=request.getParameter("condition");
           
         HttpSession three=request.getSession(true);
         three.setAttribute("namesell",namesell);
         three.setAttribute("contactsell",contactsell);
         three.setAttribute("bnamesell",bnamesell);
         three.setAttribute("wnamesell",wnamesell);
         three.setAttribute("publishersell",publishersell);
         three.setAttribute("editionsell",editionsell);
         three.setAttribute("isbnsell",isbnsell);
         three.setAttribute("selectsell",selectsell);
         three.setAttribute("opricesell",opricesell);
         three.setAttribute("condition",condition);
         %>
    </body>
</html>
