import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginX")
public class LoginServletX extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
        String password = req.getParameter("password");
        PrintWriter out = resp.getWriter();
        resp.sendRedirect("index.jsp");
        /*LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);*/
	}
}
