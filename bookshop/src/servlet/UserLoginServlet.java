package servlet;

import model.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "user_login",urlPatterns = "/user_login")
public class UserLoginServlet extends HttpServlet {
    private UserService uService = new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ue = request.getParameter("ue");
        String password = request.getParameter("password");
        User user = uService.login(ue, password);
        if(user==null) {
            request.setAttribute("failMsg", "The user name/email is wrong. Please try again！");
            request.getRequestDispatcher("/user_login.jsp").forward(request, response);
        }else {
            request.getSession().setAttribute("user", user);
            if(user.isIsadmin()==false) {
                request.getRequestDispatcher("/user_center.jsp").forward(request, response);
            }
            else {
                request.getRequestDispatcher("/admin_center.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
