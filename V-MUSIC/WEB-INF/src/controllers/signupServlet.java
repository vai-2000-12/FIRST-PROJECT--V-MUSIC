package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/Signup.do")
public class signupServlet extends HttpServlet {
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    request.getRequestDispatcher("Signup.jsp").forward(request, response);
  }

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    HttpSession session = request.getSession();

    String nextPage = "Signin.jsp";

    // Getting the parameters....

    String Name = request.getParameter("uname");
    String Email = request.getParameter("email");
    String Password = request.getParameter("psw");

    // Validation
    boolean flag = true;

    Pattern p = Pattern.compile(" ^[A-Za-z0-9+_.-]+@(.+)$ ");
    Matcher m = p.matcher(Email);

    if (!m.matches()) {
      request.setAttribute("email_err", "Please Type Valid Email");
      flag = false;
    }

    Pattern p1 = Pattern.compile("[a-zA-Z]{2,}");
    Matcher m1 = p1.matcher(Name);

    if (!m1.matches()) {
      request.setAttribute("uname_err", "Please Type Valid Name");
      flag = false;
    }

    Pattern p2 = Pattern.compile("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
    Matcher m2 = p2.matcher(Password);

    if (!m2.matches()) {
      request.setAttribute("password_err", "Please Enter the Password again");
      flag = false;
    }

    if (flag) {
      User user = new User(Name, Email, Password);
      if (user.addUser()) {
        response.sendRedirect("Signin.jsp");
      } else {
        request.setAttribute("Message", "User exists with same Email");
      }
    } else {
      request.getRequestDispatcher(nextPage).forward(request, response);
    }
  }
}
