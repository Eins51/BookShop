package servlet;

import model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "order_submit",urlPatterns = "/order_submit")
public class OrderSubmitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("user")!=null){
            //request.getRequestDispatcher("/order_submit.jsp").forward(request, response)
            Order o = (Order) request.getSession().getAttribute("order");
            if(o!=null) {
                if(o.getTotal()== 0){
                    request.setAttribute("failMsg", "Please add books to shopping cart first！");
                    request.getRequestDispatcher("/goods_cart.jsp").forward(request, response);
                }
                else {
                    request.getRequestDispatcher("/order_submit.jsp").forward(request, response);
                }
            }
            else {
                request.setAttribute("failMsg", "Please add books to shopping cart first！");
                request.getRequestDispatcher("/goods_cart.jsp").forward(request, response);
            }

        }
        else {
            request.setAttribute("failMsg", "Please log in first！");
            request.getRequestDispatcher("/user_login.jsp").forward(request, response);
        }
    }
}
