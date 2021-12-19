<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="container">
			<div class="jumbotron" style="padding-top: 20px;width:60%;display:flex;margin-left:20%;margin-right:20%;padding-left:10px;">
			<div style="width:300px; text-align:center;margin-right:60px;margin-top:-40px;">
			<a><img src="images/gif/login1.gif" width="350px" height="350px"></a>
			</div>
				<div style="width:300px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">
					<h5 style="text-align: center;">계정이 없으신가요?</h5>
					<p style="text-align: center;"><a href="join.jsp" class="btn btn-warning form-control" role="button">회원가입</a></p>
				</form>
				</div>
			</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>