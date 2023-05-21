<%-- 
    Document   : UserLoginPage.jsp
    Created on : 20-Apr-2023, 6:44:29 pm
    Author     : raghavkatyal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vote Page</title>
    </head>
    <body>
      <%
        String email=request.getParameter("username");
        String password=request.getParameter("password");
        
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/UserRegistration_db","root","12345678");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginaccess_db","root","12345678");
        Statement st=con.createStatement();
        Statement stt=conn.createStatement();
         
        ResultSet rs=st.executeQuery("select * from UserInformation where email='"+email+"' and password='"+password+"'");
        ResultSet rss=stt.executeQuery("select * from logintable where emailid='"+email+"' and password='"+password+"'");
       
        
      
        if(rs.next())
        {
       
       if(!rss.next())
       {
        String sql = "INSERT INTO logintable(emailid,password) values('"+email+"','"+password+"')";
        stt.executeUpdate(sql);
       
       request.getRequestDispatcher("VotePage.jsp").forward(request, response);
      } 
       else
        out.println("<font color=red size=5>already login");
        
       }
       
   
        else
        {
        out.println("<font color=red size=5>Invalid UserName or Password ");
        }
      
        
        }
        catch(Exception ex)
        {
        out.print(ex.getMessage());
        }
        %>
    </body>
</html>
