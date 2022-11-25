package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;
import model.LoginBean;

/**
 * Servlet implementation class LoginAdminServlet
 */
@WebServlet("/loginAdmin")
public class LoginAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                System.out.println("login success");
                response.sendRedirect("welcomeadmin.jsp");
            } else {
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}