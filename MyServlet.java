

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author raghavkatyal
 */
public class MyServlet extends HttpServlet {

   

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
               PrintWriter out = response.getWriter();
            
          
               String name=request.getParameter("user_name");
               String password=request.getParameter("user_password");
               String adharid=request.getParameter("user_ID");
               String email=request.getParameter("user_email");
               String gender=request.getParameter("user_gender");
               String cond=request.getParameter("condition");
            
                 
       if(email!=null && password!=null && name!=null  && gender!=null){
                  
                            
        try{
              Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/UserRegistration_db","root","12345678");
            
            Statement st=con.createStatement();
              
            ResultSet rs=st.executeQuery("Select * from UserInformation where adharid='"+adharid+"'");
            if(rs.next()){
                out.println("User already registered");
            }
            else{
                st.execute("insert into UserInformation values('"+name+"','"+password+"','"+adharid+"','"+email+"','"+gender+"')");
            out.println("<font color=red size=5>User Registered</font>");
            }
        }
        catch(Exception ex)
        {
        System.out.println(ex.getMessage());
        }
           
                      
                  }
                  
                  else{
                      out.println("<h1>Invalid Details! Fill the Form Correctly </h1>");
                  }

}
}