package controllers;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/ Next.do")
public class NextServlet  extends HttpServlet{
   public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException{
       
      request.getRequestDispatcher("About Us.jsp").forward(request, response);
     
   }  
}
