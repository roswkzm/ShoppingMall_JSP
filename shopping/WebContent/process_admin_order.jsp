<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<%@page import="java.sql.*"%>

<title>장바구니</title>
<%
String id = request.getParameter("userid");
%>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div>
	<%=id%>
	<%
			String dbURL = "jdbc:mysql://localhost:3306/SHOPPING?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "root";

			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			// 1) JDBC 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			// 2) DB연결(DB url, DB id, DB pw)
			con = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
			/* DB 
			TABLE order1(
			userid varchar(20),
			address varchar(50),
			arrive varchar(20),
			ojname varchar(20),
			ojprice int,
			ojqnt int,
			sumprice int,
			totalprice int);*/
		 // JDBC 참조 변수 준비
				String SQL = "delete from order1 where userID = (?)";
				pstmt = con.prepareStatement(SQL);
				pstmt.setString(1,id);
				pstmt.executeUpdate();
			
				
				response.sendRedirect("admin_user.jsp");
			%>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
