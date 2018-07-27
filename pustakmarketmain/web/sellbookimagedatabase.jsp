<%-- 
    Document   : sellbookimagedatabase
    Created on : 22 Jul, 2018, 2:54:13 PM
    Author     : krishna rathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>

<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
 <%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            
          body { 
              background-image:url('images/bk.gif'); 
              background-repeat: no-repeat;
             background-size: cover;
             height:10%;
     opacity: 0.5;
     color:blue;
     font-family: Cooper Black;
    font-size: 25px;
                  }
                  
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! File file;
      int maxsize=500000;
      int maxfactsize=500000;
      String path="C:/Users/Dell_PC/Documents/NetBeansProjects/pustakmarketmain/web/imagesell";
      %>
        <%  
             HttpSession two=request.getSession(false);
             String namesell=(String)two.getAttribute("namesell");
             String contactsell=(String)two.getAttribute("contactsell");
             String bnamesell=(String)two.getAttribute("bnamesell");
             String wnamesell=(String)two.getAttribute("wnamesell");
             String publishersell=(String)two.getAttribute("publishersell");
             String editionsell=(String)two.getAttribute("editionsell");
             String isbnsell=(String)two.getAttribute("isbnsell");
             String selectsell=(String)two.getAttribute("selectsell");
             int opricesell=(Integer)two.getAttribute("opricesell");
             int spricesell=(Integer)two.getAttribute("spricesell");
             String condition=(String)two.getAttribute("condition");
   
         //    out.println(namesell);
           //   out.println(contactsell);
             
            
             String str;
            String type=request.getContentType();
            //out.println(type);
            if(type.indexOf("multipart/form-data")>=0)
            {
              //out.print("its a multipart data");
              DiskFileItemFactory discfact=new DiskFileItemFactory();
              discfact.setSizeThreshold(maxfactsize);
              discfact.setRepository(new File("c:\\temp"));
              
              ServletFileUpload upload=new ServletFileUpload(discfact);
              upload.setFileSizeMax(maxsize);
              List lis=upload.parseRequest(request);
              Iterator itr=lis.iterator();
              while(itr.hasNext())
              {
                 
                  FileItem item=(FileItem)itr.next();
                  if(!item.isFormField())
                  {
                   str=item.getName();
                   str="sell"+str;
                  // out.print(str);
                   file=new File(path,str);
                   item.write(file);
                    String ppp="C:/Users/Dell_PC/Documents/NetBeansProjects/pustakmarketmain/web/imagesell/"+"sell"+(str.substring(4));
                     File f=new File(ppp);
                    InputStream is =new FileInputStream(f);
                   //out.println("uploaded............");
                   Class.forName("com.mysql.jdbc.Driver");     
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
           
    
                PreparedStatement pstmt = con.prepareStatement("insert into booksell values(?,?,?,?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1, namesell);
                pstmt.setString(2, contactsell);
                pstmt.setString(3, bnamesell);
                pstmt.setString(4, wnamesell);
                pstmt.setString(5, publishersell);
                pstmt.setString(6, editionsell);
                pstmt.setString(7, isbnsell);
                pstmt.setString(8, selectsell);
                pstmt.setInt(9, opricesell);
                pstmt.setInt(10, spricesell);
                pstmt.setString(11, condition);
                pstmt.setBinaryStream(12, is, f.length());
                
                 int count = pstmt.executeUpdate();
                if(count>0)
                {
                out.println("THANK YOU! YOUR DATA IS SUCCESSFULLY SUBMITTED...");
                }
                else
                {
                out.println("Not Successfully added");
                }
                  }
              }
            }
            
                
           
            
        %>
        <center>
        <div style=" margin-top: 150px;">
        THANK YOU! YOUR DATA IS SUCCESSFULLY SUBMITTED...
        <br><br><br><br>
        <a href="index1.jsp"><button  style="height:40px; width:150px; background-color:lightcoral; font-size: 20px; font-family:Cooper Black;  border-radius: 5px;"> CONTINUE</button></a>
        </div>
    </center>
        
        
    </body>
</html>
