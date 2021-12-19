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
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="service4" style="height: 230px;">
		<div class="gif_img">
			<a><img src="images/gif/3.gif" width="230px" height="230px"></a>
			<div id="youngjin" style="width: 200px; height: 427px"></div>
		</div>
		<div class="contents4">
			<h2><%=product.getPname()%>의 상품정보</h2>
			<p>Honest 프로틴의 모든 상품 정보를 표시하는 페이지입니다. 믿음직한 프로틴을 직접 제작하여<br>판매하는 'Honest 프로틴' 직접 먹어보고 경험하세요.</p>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class ="col-md-5">
				<img src="images/protein/products/<%=product.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-5">
			<form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
				<h2 style="font-weight:800"><%=product.getPname()%></h2>
				<p style="border:2px solid gray;background-color:#eee;;"><%=product.getDescription()%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
				<p><b>제조사</b> : <%=product.getManufacturer()%>
				<p><b>분류</b> : <%=product.getCategory()%>　　(1 = Whey 프로틴, 2 = gainer 프로틴)
				<p><b>수량</b> : <input type="text" name="count" value="1" size="3" >
				<h4><%=product.getUnitPrice()%>원</h4>
				<p>
					<a href="#" class="btn btn-info" onclick="addToCart()"> 장바구니 담기 &raquo;</a> 
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./products.jsp" class="btn btn-danger"> 상품 목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>
