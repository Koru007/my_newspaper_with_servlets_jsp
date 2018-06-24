package newspaper;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login", urlPatterns = {"/newspaper/loginAdmin"})
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html");

      /*  String log = request.getParameter("log");
        String pass = request.getParameter("pass");

        if (log.equals("admin12") && pass.equals("pass12")) {*/

        response.sendRedirect("/newspaper/admin/1");

        /* } else {
            String error = "WRONG USERNAME OR PASSWORD! TRY AGAIN";
            request.setAttribute("error", error);
            RequestDispatcher rd = request.getRequestDispatcher("/view/LoginPage.jsp");
            rd.include(request, response);
        }*/

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/LoginPage.jsp");

        dispatcher.forward(request, response);
    }
}
