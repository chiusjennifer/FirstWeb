import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	  
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		PrintWriter out = resp.getWriter();
		LoginBean bean = new LoginBean();
		bean.setUsername(username);
		bean.setPassword(password);
		LoginBean newBean = validate(bean);
		out.append(validate(bean).getName());
//		out.append(isOk.getName());
	
	}
	
	public  LoginBean validate(LoginBean bean) {	
	   boolean status=false;
	   ResultSet rs;
	   LoginBean OkBean =new LoginBean();
	   try {
		   Class.forName("com.mysql.jdbc.Driver");
		   String url="jdbc:mysql://120.110.115.80:3306/Baking";
		   Connection conn=DriverManager.getConnection(url,"root","12345678");
		   PreparedStatement ps=conn
				   .prepareStatement("select * from PERSONAL where user=? and password=?");
		            ps.setString(1,bean.getUsername());
		            ps.setString(2,bean.getPassword());
		            System.out.println(ps);
		            rs=ps.executeQuery();
		            status=rs.next();
		            System.out.println(rs.getString("Name"));
		            OkBean=new LoginBean();
		            OkBean.setUsername(bean.getUsername());
		            OkBean.setPassword(bean.getPassword());
		            OkBean.setName(rs.getString("Name"));
		            
		            
	   } catch(Exception e) {
		   System.out.println(e.toString());
		   e.printStackTrace();
	   }
	   return OkBean;
	}
}
