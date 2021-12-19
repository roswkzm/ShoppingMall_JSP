<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>카드 결제</title>
<script type="text/javascript">
function cancel() {
	if (confirm("결제를 취소하시겠습니까?")) {
		document.addForm.submit();
	} else {		
		document.addForm.reset();
	}
}
</script>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="service4" style="height: 230px;">
		<div class="gif_img">
			<a><img src="images/gif/card1.gif" width="230px" height="230px"></a>
			<div id="youngjin" style="width: 200px; height: 427px"></div>
		</div>
		<div class="contents4">
			<h2>카드 결제</h2>
			<p>카드 결제 페이지입니다. 카드 정보를 정확히 입력해주세요.<br>개인정보 보호법에 의해 카드정보를 저장하지 않으니 안심하세요.</p>
		</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("userID")%>" />
			<div class="form-group row">
				<label class="col-sm-2">카드사 선택</label>
				<div class="col-sm-3">
					<select name="name" class="form-control">
						<option value='' selected>-- 선택 --</option>
						<option value='우리'>BC카드</option>
						<option value='우리'>KB국민카드</option>
						<option value='우리'>삼성카드</option>
						<option value='우리'>신한카드</option>
						<option value='우리'>우리카드</option>
						<option value='우리'>하나카드</option>
						<option value='우리'>롯데카드</option>
						<option value='우리'>현대카드</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">카드주 이름</label>
				<div class="col-sm-3">
					<input name="cardname" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">카드 번호</label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" placeholder="(XXXX-XXXX-XXXX-XXXX)"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">유효기간</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" placeholder="(MM/YY)"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">생년월일 앞자리</label>
				<div class="col-sm-5">
					<input name="birth" type="text" class="form-control" placeholder="ex) 970124" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">수신인</label>
				<div class="col-sm-5">
					<input name="name" type="text" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-5">
					<input name="shippingDate" type="text" class="form-control" placeholder="ex) XXXX-XX-XX"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp>" class="btn btn-secondary" role="button"> 이전 </a> 
					<input	type="submit" class="btn btn-primary" value="등록" />
					<a href="main.jsp" class="btn btn-info" onclick="cancel()">취소하기</a> 
				</div>
			</div>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>
