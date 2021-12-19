<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="service5" style="height: 220px">
		<div class="gif_img">
			<a><img src="images/gif/4.gif" width="230px" height="230px"></a>
			<div id="youngjin" style="width: 200px; height: 427px"></div>
		</div>
		<div class="contents5">
			<h2>웨이 프로틴(빠른 흡수)</h2>
			<p>단백질은 인체에 중요한 필수 영양소로 근성장과 유지에 도움을 주어 운동 시 섭취가<br>필수입니다. 'Honest 프로틴'의 임팩트 웨이 프로틴은 트레이닝 목표 달성에 완벽한<br>제품입니다. 'Honest 프로틴'의 THE 웨이 프로틴 쉐이크로 운동 후 빠른 회복을 도와보세요.</p>
		</div>
	</div>
	<div class="service6" style="height: 80px">
		<table><tr><td>
					<p><a class="btn btn-primary btn-pull" href="products.jsp"role="button" style="margin-right: 50px;">모든 상품정보 보기</a></p>
				</td>
				<td>
					<p><a class="btn btn-primary btn-pull" href="gainer.jsp"role="button">게이너 프로틴만 보기</a></p>
				</td></tr></table>
	</div>
	<%
	ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<%
				if(product.getCategory() == 1){
			%>
			<div class="col-md-4">
				<img src ="images/protein/weight/<%=product.getFilename()%>" style ="width: 100%">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<h4 style="font-weight:bold"><%=product.getUnitPrice()%>원</h4>
				<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-warning" role="button"> 상품 주문 바로가기</a></p>
			</div>
			<%
				}
			%>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>