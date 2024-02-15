package controllers;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/NEXT.do")
public class GoNextServlet extends HttpServlet {
  public void doGet(HttpServletRequest request , HttpServletResponse response)throws IOException, ServletException{
   request.getRequestDispatcher("Categories2.jsp").forward(request, response);      
        }
}
