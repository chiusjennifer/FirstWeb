<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

   Class.forName("com.mysql.jdbc.Driver");
   String url="jdbc:mysql://120.110.115.80:3306/Baking";
   Connection conn=DriverManager.getConnection(url,"root","12345678");
   PreparedStatement ps=conn
		   .prepareStatement("INSERT INTO `PERSONAL`(`ID`, `User`, `Password`, `Name`, `Address`, `Birthday`, `Tel`, `Mobile`, `Sex`)"
			   		+ " VALUES (?,?,?,?,?,?,?,?,?)");
   ps.setInt(1,0);
   ps.setString(2, "Cindy");
   ps.setString(3,"15374");
   ps.setString(4,"fdggh");
   ps.setString(5,"sasdfgkgh");
   ps.setDate(6, new Date(2000,10,10));
   ps.setString(7,"0123456");
   ps.setString(8,"0745341");
   ps.setBoolean(9,true);
   
   int status=ps.executeUpdate();
     
   
%>
<jsp:forward page="index.jsp" />
</body>
</html>