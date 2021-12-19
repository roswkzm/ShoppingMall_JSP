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
String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
%>
</head>
<%
String dbURL = "jdbc:mysql://localhost:3306/SHOPPING?serverTimezone=UTC";
String dbID = "root";
String dbPassword = "root";

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
// 1) JDBC 드라이버 로딩
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(dbURL, dbID, dbPassword);

String SQL = "delete from cart where user = (?)";
pstmt = con.prepareStatement(SQL);
pstmt.setString(1,userID);
pstmt.executeUpdate();

%>
<body>
	<jsp:include page="nav.jsp" />
	<div class="service4" style="height: 230px;">
		<div class="gif_img">
			<a><img src="images/gif/cart1.gif" width="230px" height="230px"></a>
			<div id="youngjin" style="width: 200px; height: 427px"></div>
		</div>
		<div class="contents4">
			<h2><%=userID %>님의 장바구니</h2>
			<p>Honest 프로틴의 장바구니 페이지입니다. 믿음직한 프로틴을 직접 제작하여 판매하는 'Honest 프로틴' 직접 먹어보고 경험하세요.</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table style="width:100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=userID%>" class="btn btn-danger">전체 삭제</a></td>
					<td align="right"><a href="./products.jsp" class="btn btn-warning">쇼핑 계속하기</a></td>
					
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th style="text-align:center;">사진</th>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>총 금액</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Product>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Product product = cartList.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td  style="text-align:center;"><img src ="images/protein/products/<%=product.getFilename()%>" style ="width: 150px;"></td>
					<td><%=product.getPname()%></td>
					<td><%=product.getUnitPrice()%></td>
					<td><%=product.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">삭제</a>
					<a href="./product.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">상품 다시보기</a></td>
				</tr>
				<%
				/* DB 
					table cart(
					name varchar(20),
				    price int,
				    qnt int, 
				    sumPrice int); */
				 // JDBC 참조 변수 준비
				    // 2) DB연결(DB url, DB id, DB pw)
					    
		
					    // 1) JDBC 드라이버 로딩
					    Class.forName("com.mysql.jdbc.Driver");
						String SQL_in = "INSERT INTO cart VALUES (?, ?, ?, ?,?)";
							pstmt = con.prepareStatement(SQL_in);
							pstmt.setString(1,product.getPname());
							pstmt.setInt(2,product.getUnitPrice());
							pstmt.setInt(3,product.getQuantity());
							pstmt.setInt(4,total);
							pstmt.setString(5,userID);
							pstmt.executeUpdate();
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th style="padding-top:15px">총액</th>
					<th style="padding-top:15px"><%=sum%></th>
					<th><a href="./shippingInfo.jsp?userID=<%= userID %>" class="btn btn-success">주문하기</a></th>
					<th></th>
				</tr>
			</table>
		</div>
		<hr>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
