<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/custom_main.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="service4" style="height: 230px;">
		<div class="gif_img" style="padding-top:10px">
			<a><img src="images/gif/login5.gif" width="230px" height="210px"></a>
			<div id="youngjin" style="width: 200px; height: 427px"></div>
		</div>
		<div class="contents4">
			<h2>쇼핑몰 제작 소개</h2>
			<p>Honest 프로틴의 메인 화면입니다. 쇼핑몰의 디자인 템플릿은 부트스트랩과 직접 제작한<br>css파일을 사용하였고 데이터베이스를 포함한 쇼핑몰에서 필요한 모든 기능을 구축<br>완료하였습니다. 편하게 둘러보시기 바랍니다.</p>
		</div>
	</div>
	<br><br>
	<div style="padding-right: 15%; padding-left: 15%;">
	<table ><tr><td style="padding-right: 20%;">
	<div class="container"  style="width: 400px; height: 600px; vertical-align:left;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="float:left;">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/protein/weight/1.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>웨이프로틴</h4>
						<p>블랜드 프로틴</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/weight/2.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4 style="color:black">웨이프로틴</h4>
						<p style="color:black">ISOLATE</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/weight/3.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>웨이프로틴</h4>
						<p>BLACK</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/weight/4.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>웨이프로틴</h4>
						<p>GOLD</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/weight/5.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>웨이프로틴</h4>
						<p>LOW SUGAR</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/weight/6.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4 style="color:black">웨이프로틴</h4>
						<p style="color:black">PACK</p>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		
		<div class="jumbotron" style="width:370px; height:150px; padding-top: 0px; padding-left: 10px; padding-right: 10px; margin-top:10px">
			<div class="container" style="box-shadow:0px 0px 10px rgba(0,0,0,0.5); margin-top:400px;">
			
				<h4 style="text-align: center; font-weight: bold">웨이 프로틴?</h4>
				<h4>맑은 액체를 추출하여 만든 유청단백질을 말합니다. 근육을 증가시키기 위한 양질의 완전 단백질로써 다른 프로틴보다 탄수화물이 적게들어 다른 프로틴보다 살찌지 않습니다.</h4>
				
			</div>
		</div>
	</div>
	</td>
	<td style="padding-left: 20%;">
	<div class="container"  style="width: 400px; height: 600px;  vertical-align:right;">
		<div id="myCarousel1" class="carousel slide" data-ride="carousel" style="float:right;">
			<ol class="carousel-indicators" >
				<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1"></li>
				<li data-target="#myCarousel1" data-slide-to="2"></li>
				<li data-target="#myCarousel1" data-slide-to="3"></li>
				<li data-target="#myCarousel1" data-slide-to="4"></li>
				<li data-target="#myCarousel1" data-slide-to="5"></li>
			</ol>
			<div class="carousel-inner"  style="align:left;">
				<div class="item active">
					<img src="images/protein/gainer/1.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>게이너프로틴</h4>
						<p>현미 프로틴</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/gainer/2.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>게이너프로틴</h4>
						<p>땅콩 프로틴</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/gainer/3.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>게이너프로틴</h4>
						<p>half 프로틴</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/gainer/4.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>게이너프로틴</h4>
						<p>EXTREME</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/gainer/5.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>게이너프로틴</h4>
						<p>RED 프로틴</p>
					</div>
				</div>
				<div class="item">
					<img src="images/protein/gainer/6.jpg">
					<div class="carousel-caption d-none d-md-block">
						<h4>게이너프로틴</h4>
						<p>PEACH 프로틴</p>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel1" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel1" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<div class="jumbotron" style="width:370px; height:150px; padding-top: 0px; padding-left: 10px; padding-right: 10px; margin-top:10px">
			<div class="container" style="box-shadow:0px 0px 10px rgba(0,0,0,0.5);  margin-top:400px;">
				<h4 style="text-align: center; font-weight: bold">게이너 프로틴?</h4>
				<h4>단백질과 탄수화물이 혼합되어 들어있는 보충제를 지칭하는 것입니다. 단백질과 탄수화물의 비율이 8:2에 이르는 것부터 5:5, 2:8에 이르기까지 다양한 비율의 제품이 있습니다.</h4>
				
			</div>
		</div>
	</div>
	</td></tr></table></div>
	<h1 style="text-align:center;">고객님의 운동 목적은 무엇입니까?</h1>
	<h4 style="text-align:center;font-family : 'Hanna'">적합한 프로틴을 추천해드립니다.</h4>
	<div class="mainpng" style="display:flex; padding:3%;">
		<div style="padding-right:3%">							
					<a href="gainer.jsp">
					<img src="images/main_1.png" width="400px" height="350px">
				</a>
		</div>
		<div style="padding-right:3%">
					<a href="whey.jsp">
					<img src="images/main_2.png" width="400px" height="350px">
				</a>
		</div>
		<div>
					<a href="products.jsp">
					<img src="images/main_3.png" width="400px" height="350px">
					</a>
		</div>
	</div>
    <jsp:include page="footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>