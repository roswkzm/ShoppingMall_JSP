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
						<a><img src="images/gif/1.gif" width="230px" height="230px"></a>
						<div id="youngjin" style="width: 200px; height: 427px"></div>
					</div>
					<div class="contents5">
                        <h2>게이너 프로틴</h2>
                        <p> 근육 및 체중증가를 위해서는, 소비하는 칼로리보다 더 많은 칼로리를 섭취하는 것이<br>중요합니다. 이 제품들은 하루 중 필요한 단백질을 지속적으로 공급해 주는 제품입니다.<br>'Honest 프로틴'의 THE 게이너 프로틴 쉐이크로 운동 후 체중과 근육증가를 도와보세요.</p>
                    </div>
                </div>
                <div class="service6" style="height:80px">
					<table><tr><td>
						<p><a class="btn btn-primary btn-pull" href="products.jsp" role="button"style="margin-right: 50px;">모든 상품정보 보기</a></p>
					</td>
					<td>
						<p><a class="btn btn-primary btn-pull" href="whey.jsp" role="button">웨이 프로틴만 보기</a></p>
					</td>
					</tr></table>
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
				if(product.getCategory() == 2){
			%>
			<div class="col-md-4">
				<img src ="images/protein/products/<%=product.getFilename()%>" style ="width: 100%">
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