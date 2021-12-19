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
<link rel="stylesheet" href="css/introduce.css">
 <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<style>
.intro_bg {
    background-image:url("images/intro.jpg");
    width:100%;
    height:460px;
    background-repeat: no-repeat;
    background-size: contain;
    margin-top:-20px
}
.main_text2 {
    width: 100%;
    height: 400px;
    background-image: url("images/contact1.png");
}
</style>
<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<%
		int total_average=0;
		String whey_best="a";
		String gainer_best="a";
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			total_average = total_average + product.getUnitPrice();
			
			if(product.getCategory()==1){
			if(product.getCondition()=="Hot"){
			whey_best = product.getPname();	
			}}
			
			if(product.getCategory()==2){
				if(product.getCondition()=="Hot"){
				gainer_best = product.getPname();	
				}}
		}
	%>
	<div class="wrap">
            <div class="intro_bg" style=" display: table">
                <div class="intro_text">
                <h1>Honest 프로틴 소개</h1>
                <h4>고객분들께 믿음직한 프로틴만을 판매합니다.</h4>
                </div>
            </div>
            <ul class="amount">
                <li>
                    <div>
                        <div class="contents1">국제 프로틴대회</div>
                        <div class="result">1등 수상 8회</div>
                    </div>
                </li>
                <li>
                    <div>
                        <div class="contents1">가장 저렴한 가격</div>
                        <div class="result">평균 <%=total_average/12%>원</div>
                    </div>
                </li>
                <li>
                    <div>
                        <div class="contents1">베스트 웨이 프로틴</div>
                        <div class="result"><%=whey_best%></div>
                    </div>
                </li>
                <li>
                    <div>
                        <div class="contents1">베스트 게이너 프로틴</div>
                        <div class="result"><%=gainer_best%></div>
                    </div>
                </li>
                
            </ul>
            <div class="main_text0">
                <h1>회사 SLOGAN</h1>
                <div class="contents1">믿음직하고 신뢰있는 프로틴을 합리적인 가격에 제공하자</div>
                <ul class="icons">
                    <li>
                        <div class="icon_img">
                            <img src="images/icon2.svg">
                        </div>
                        <div class="contents1_bold">안전한 프로틴</div>
                        <div class="contents2">
                            HACCP, KS, HALAL 이외에도 5건의 각종<br>식품 안전 인증서를 보유하고 있습니다.<br>
                        </div>
                        <div class="more">
                            <p><a  href="https://namu.wiki/w/%EB%8B%A8%EB%B0%B1%EC%A7%88%20%EB%B3%B4%EC%B6%A9%EC%A0%9C?from=%ED%94%84%EB%A1%9C%ED%8B%B4" role="button" style="color:white">MORE</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="icon_img">
                            <img src="images/icon0.svg">
                        </div>
                        <div class="contents1_bold">임상시험 완료</div>
                        <div class="contents2">
                            Honest 프로틴은 프로틴에 대한 부작용을<br>대비하여 인종과 체질에 따른 임상결과를<br>진행하였고 모두 통과하였습니다.
                        </div>
                        <div class="more">
                            <p><a  href="https://namu.wiki/w/%EC%9E%84%EC%83%81%EC%8B%9C%ED%97%98" role="button" style="color:white">MORE</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="icon_img">
                            <img src="images/icon1.svg">
                        </div>
                        <div class="contents1_bold">현명한 소비절차</div>
                        <div class="contents2">
                            회사 내부 자체공정을 통해 더욱 저렴하고<br>특색있는 제품들을 만나보실수 있습니다.<br>
                        </div>
                        <div class="more">
                            <p><a  href="https://namu.wiki/w/%EC%86%8C%EB%B9%84" role="button" style="color:white">MORE</a></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="main_text1">
                <h1>회사 정보</h1>
                <div class="contents1">엄격한 유통과정으로 까다로운 운동가들에게 납품하고 있습니다</div>
                <div class="service">
				<div class="food_photo" style="padding-left:5%">
					<script src="js/googlemap.js"></script>
					<div id="map-canvas" style="width: 640px; height: 427px"></div>
				</div>
				<div class="contents2">
                        <h2>Honest 프로틴</h2>
                        Honest 프로틴은 프로틴 생산판매를 주종으로 하며 20년의 노하우로 순도 높은 단백질
                        <br>추출 기술을 독보적으로 보유하고 있는 기업입니다.
                        <br>2001년 경기도 일산에서 서울시 강서구로 이주하여 강서구의 지역사회 발전을 
                        <br>위해 헌신 노력해 왔습니다. 뿐만아니라 사내 연구팀을 만들어 더욱 좋은 
                        <br>프로틴을 고객분들께 제공하기 위해 수많은 노력을 하고 있습니다.
                        <br>
                        <br>품질 좋고 청결하고 실용성 있는 제품을 생산하기 위해 고객의 생각을 맞출 수 있는 
                        <br>제품을 생산하고자 노력하여 후회 없는 선택이 되도록 항상 고객의 작은 소리에도
                        <br>귀 기울이는 Honest 프로틴이 되겠습니다.
                        <br>
                        <br>앞으로도 최선을 다하여 좋은 품질 및 가격을 제공하도록 노력할 것이며 고객
                        <br>한 분 한 분께 정성을 다하겠습니다. 감사합니다.
                        <br>
                        <br>
                        <br>
                        <br>-Honest 프로틴 대표 올림-
                    </div>
                </div>

                <div class="main_text2">
                    <ul>
                        <li>
                            <div><h1>CONTACT</h1></div>
                            <div>우리에게 파트너십을 신청하거나, 고객이 되어주세요</div>
                            <div class="more2">
                                <p><a  href="./products.jsp" role="button" style="color:white">제품 구매하러 가기</a></p>
                            </div>
                        </li>
                        <li>
                            <div><h1>QUESTIONS</h1></div>
                            <div>문의사항이나 개선방안이 있다면 알려주세요.</div>
                            <div class="more2">
                                <p><a  href="bbs.jsp" role="button" style="color:white">게시판 바로가기</a></p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>