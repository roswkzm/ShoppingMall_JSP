<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/custom_main.css">
<link rel="stylesheet" href="css/custom.css">
</head>
<%
		String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp"
			style="width: 144px; height: 50px; padding: 10px 5px 5px 10px;"><img
			src="images/logo2.png" width="100%" height="100%"></a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="main.jsp">메인</a></li>
			<li class="dropdown"><a href="#" class="dropddown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">상품구매<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="products.jsp">모든 상품</a></li>
					<li><a href="whey.jsp">웨이프로틴</a></li>
					<li><a href="gainer.jsp">게이너프로틴</a></li>
				</ul></li>
			<li><a href="review.jsp">고객리뷰</a></li>
			<li><a href="introduce.jsp">회사소개</a></li>
			<li><a href="bbs.jsp">게시판</a></li>
		</ul>
		<%
				if(userID == null) {	
			%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="ture"
				aria-expanded="false">접속하기<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul></li>
		</ul>
		<%
				} else {
			%>
		<ul class="nav navbar-nav navbar-right">
			<%
				if(userID.equals("admin")) {	
			%>
			<li><a href="admin_order.jsp" style="color:red;">전체회원 주문내역</a></li>
			<li><a href="admin_user.jsp" style="color:red;">전체회원 정보내역</a></li>
			<%
				}
			%>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="ture"
				aria-expanded="false"><%= userID %>님<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="logoutAction.jsp">로그아웃</a></li>
					<li><a href="cart.jsp">장바구니</a></li>
					<li><a href="checkorder.jsp">주문목록</a></li>
				</ul></li>
		</ul>
		<%
				}
			%>
	</div>
</nav>