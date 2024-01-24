<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
      String username=request.getParameter("username");
      String password=request.getParameter("password");
      Class.forName("com.mysql.jdbc.Driver");
      String url="jdbc:mysql://120.110.115.80:3306/Baking";
      Connection conn=DriverManager.getConnection(url,"root","12345678");
      PreparedStatement ps=conn
    		  .prepareStatement("select * from PERSONAL where user=? and password=?");
      ps.setString(1,username);
      ps.setString(2,password);
      ResultSet rs=ps.executeQuery();
      rs.first();
      out.append(rs.getString("Name"));
      
      %>
</body>
</html>