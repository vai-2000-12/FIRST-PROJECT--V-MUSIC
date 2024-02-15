package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/Logout.do")
public class LogoutServlet extends HttpServlet {
      public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

            HttpSession session = request.getSession();

            session.invalidate();

            response.sendRedirect("login.do");
          
      }
}