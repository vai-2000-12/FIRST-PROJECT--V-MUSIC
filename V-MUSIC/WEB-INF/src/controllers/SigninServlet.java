package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import models.User;

@WebServlet("/login.do")
public class SigninServlet extends HttpServlet {
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      request.getRequestDispatcher("Signin.jsp").forward(request, response);
   }

   public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      HttpSession session = request.getSession();

      String Email = request.getParameter("email");
      String Password = request.getParameter("psw");

      User user = new User(Email, Password);
      if (user.SiginUser()) {    //If the User is a Signed-In Then It will be Show the index page 
         session.setAttribute("user", user);
         response.sendRedirect("index.jsp");
      } else {
         response.sendRedirect("Signin.jsp");
      }

   }

}
