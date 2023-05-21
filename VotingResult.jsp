

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election Result</title>
    </head>
    <body>
        <h1>ELECTION RESULT</h1>
       <%
        try
        {
        int sum1 = 0;
        int sum2 = 0;
        int sum3 = 0;
        int sum4 = 0;
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/VotingCounting_db","root","12345678");
         Statement stmt = con.createStatement();
         Statement st = con.createStatement();
  

    ResultSet ress = st.executeQuery("SELECT SUM(party1),sum(party2),sum(party3),sum(party4) FROM  votingtable ");
    while (ress.next()) {
      int c = ress.getInt(1);
      int d=ress.getInt(2);
      int e=ress.getInt(3);
      int f=ress.getInt(4);
      sum1 = sum1 + c;
      sum2=sum2+d;
       sum3=sum3+e;
        sum4=sum4+f;
    }
    out.println("<font color=red size=5>Sum of Votes for Party 1= " + sum1+"<br>");
    out.println("<font color=red size=5>Sum of Votes for Party 2= " + sum2+"<br>");
    out.println("<font color=red size=5>Sum of Votes for Party 3= " + sum3+"<br>");
    out.println("<font color=red size=5>Sum of Votes for Party 4= " + sum4+"<br>");
    
       
  
      
       
    
    
  
}
    catch(Exception ex){
    out.println(ex.getMessage());
       }
       %>
    </body>
</html>
