

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your vote is Registered Successfully</h1>
           <%
        String name=request.getParameter("Button_clicked");
     
       try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/VotingCounting_db","root","12345678");
         Statement stmt = con.createStatement();
           %>
       
        
<%
         if("Button 1".equals(name)){
       
         String sql = "insert into Votingtable values(1, 0, 0, 0)";
         stmt.executeUpdate(sql);
         request.getRequestDispatcher("index.html").forward(request, response);
         
            }
      
        else if("Button 2".equals(name)){
         String sql = "INSERT INTO Votingtable VALUES (0, 1, 0, 0)";
         stmt.executeUpdate(sql);
         request.getRequestDispatcher("index.html").forward(request, response);
            }

  
        else if("Button 3".equals(name)){
           String sql = "INSERT INTO Votingtable VALUES (0, 0, 1, 0)";
         stmt.executeUpdate(sql);
         request.getRequestDispatcher("index.html").forward(request, response);
            }
        else if("Button 4".equals(name)){
         String sql = "INSERT INTO Votingtable VALUES (0, 0, 0, 1)";
         stmt.executeUpdate(sql);
        request.getRequestDispatcher("index.html").forward(request, response);
            }
         }
            catch(Exception ex){
            out.println(ex.getMessage());
            }
  %>
    </body>
</html>
