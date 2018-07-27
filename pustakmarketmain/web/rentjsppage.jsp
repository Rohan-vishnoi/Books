<%-- 
    Document   : rentjsppage
    Created on : 22 Jul, 2018, 4:23:14 PM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>

<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
 <%@page import="java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style>
            
          body { 
              background-image:url('images/bk.gif'); 
              background-repeat: no-repeat;
               background-size: cover; 
     color:navy;
     font-family: Cooper Black;
    font-size: 25px;
    text-align: center;
    
                  }
                  a{
                      text-decoration: none;
                      color:yellow;
                  }
                  
        </style>
        <title>JSP Page</title>
    </head>
    <body>
         <%! File file;
      int maxsize=500000;
      int maxfactsize=500000;
      String path="C:/Users/Dell_PC/Documents/NetBeansProjects/pustakmarketmain/web/imagerent";
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
             String condition=(String)two.getAttribute("condition");
   
           //  out.println(namesell);
            //  out.println(contactsell);
             
            
             String str;
            String type=request.getContentType();
            //out.println(type);
            if(type.indexOf("multipart/form-data")>=0)
            {
             // out.print("its a multipart data");
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
                   str="rent"+str;
                  // out.print(str);
                   file=new File(path,str);
                   item.write(file);
                    String ppp="C:/Users/Dell_PC/Documents/NetBeansProjects/pustakmarketmain/web/imagerent/"+"rent"+(str.substring(4));
                     File f=new File(ppp);
                    InputStream is =new FileInputStream(f);
                   //out.println("uploaded............");
                   Class.forName("com.mysql.jdbc.Driver");     
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
           
    
                PreparedStatement pstmt = con.prepareStatement("insert into rentbook values(?,?,?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1, namesell);
                pstmt.setString(2, contactsell);
                pstmt.setString(3, bnamesell);
                pstmt.setString(4, wnamesell);
                pstmt.setString(5, publishersell);
                pstmt.setString(6, editionsell);
                pstmt.setString(7, isbnsell);
                pstmt.setString(8, selectsell);
                pstmt.setInt(9, opricesell);
                pstmt.setString(10, condition);
                pstmt.setBinaryStream(11, is, f.length());
                
                 int count = pstmt.executeUpdate();
                if(count>0)
                {
                out.println("THANK YOU! FOR SHARING YOUR BOOK...");
                }
                else
                {
                out.println("Opps!!!... Not Successfully added");
                }
                  }
              }
            }
            %>
      <br/><br/>
            <a href="index1.jsp" > <button  style="height:40px; width:150px; background-color:lightcoral; font-size: 20px; font-family:Cooper Black;  border-radius: 5px;">CONTINUE</button></a>
    </body>
</html>
