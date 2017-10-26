<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Kobook/qna</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS FILES -->
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">
<link rel="stylesheet" href="../css/animate.css" type="text/css" />

<link rel="stylesheet" type="text/css" href="../css/switcher.css"
	media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
	<header id="header">
		<div id="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 top-info hidden-xs">
						<span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span> <span><i
							class="fa fa-envelope"></i>Email: kobook@kobook.com</span>
					</div>
					<div class="col-sm-4 top-info">
						<ul>
							<li><a href="" class="my-tweet"><i class="fa fa-twitter"></i></a></li>
							<li><a href="" class="my-facebook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="" class="my-skype"><i class="fa fa-skype"></i></a></li>
							<li><a href="" class="my-pint"><i
									class="fa fa-pinterest"></i></a></li>
							<li><a href="" class="my-rss"><i class="fa fa-rss"></i></a></li>
							<li><a href="" class="my-google"><i
									class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="logo-bar">
			<div class="container">
				<div class="row">
					<!-- Logo / Mobile Menu -->
					<div class="col-lg-3 col-sm-3 ">
						<div id="logo">
							<h1>
								<a href="../main/main.jsp">KOBOOK</a>
							</h1>
						</div>
					</div>
					<!-- Navigation================================================== -->
					<div class="col-lg-9 col-sm-9">
						<div class="navbar navbar-default navbar-static-top"
							role="navigation">
							<!--  <div class="container">-->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>
							<div class="navbar-collapse collapse">
								<ul class="nav navbar-nav">
									<li><a href="../main/main.jsp">Home</a></li>

									<li><a href="../search/allSearch.jsp">전체검색</a></li>
									<li><a href="../search/major.jsp">전공검색</a></li>
									<li><a href="../search/location.jsp">지역검색</a></li>

									<li><a href="../community/blackList.jsp">커뮤니티</a>
										<ul class="dropdown-menu">
											<li><a href="blackList.do">신고합니다</a></li>
											<li><a href="donateList.do">무료나눔</a></li>
											<li><a href="photoReviewList.do">포토리뷰</a></li>
											<li><a href="../community/noti.jsp">공지사항</a></li>
											<li><a href="qna.do">자주묻는질문</a></li>
										</ul></li>

									<li><a href="../mypage/cart.jsp">마이페이지</a>
										<ul class="dropdown-menu">
											<li><a href="../mypage/userUpdate.jsp">회원정보수정</a></li>
											<li><a href="../mypage/cart.jsp">장바구니</a></li>
											<li><a href="../mypage/mileage.jsp">마일리지</a></li>
											<li><a href="../mypage/pickList.jsp">찜 리스트</a></li>
											<li><a href="../mypage/buyList.jsp">구매내역</a></li>
											<li><a href="../mypage/sellList.jsp">판매내역</a></li>
											<li><a href="../mypage/reviewList.jsp">판매후기</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>자주 묻는 질문</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">홈</a>/</li>
								<li>커뮤니티 /</li>
								<li>자주묻는질문</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!-- 여기서부터 -->
		<section class="content faq">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="panel-group accordion" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse02"> [찜]찜이 무엇이며 어떻게 하는건가요? </a>
									</h4>
								</div>
								<div id="collapse02" class="panel-collapse collapse">
									<div class="panel-body">
										찜이란 관심 상품을 따로 보관하는 기능으로 상품 하단의 찜 버튼으로 하실 수 있습니다.<br> 찜목록은
										우측상단의 아이콘의 메뉴로 접근가능합니다.^^
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseTwo">[찜]찜 취소는 어떻게 하나요?</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									<div class="panel-body">
										찜하신 것을 취소하고 싶으신가요?<br> 찜 취소는 로그인 후 [마이페이지-찜리스트-해제를 원하는
										상품을 찾아 찜해제]를 눌러주면 찜하신 것이 해제됩니다.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseThree">[상품]상품 삭제는 어떻게 하는 건가요?</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse">
									<div class="panel-body">상품 삭제를 원하신다면 로그인 후
										[마이페이지-판매내역-삭제를 원하는 상품-하단 상태바의 삭제]하는 방식 또는 도서 검색을 통해 본인의 글을
										찾아서 직접 삭제하시는 방식도 있습니다.</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseFive">[상품]제 상품이 왜 판매완료/삭제 처리 되어있나요?</a>
									</h4>
								</div>
								<div id="collapseFive" class="panel-collapse collapse">
									<div class="panel-body">
										거래금지 품목(술,전자담배,의약품 등)을 등록하였을 시 삭제<br> 상품명,태그,가격,이미지가 상품과
										관련 없거나 정확하지 않을 시 판매완료<br> 지나친 노출 사진 및 이용자들의 이용에 거북함을 주는
										이미지 등록 시 삭제<br> 타 사이트 홍보 및 url이 있을 시 판매완료<br> <br>
										제제 관련 문의사항은 관리자에게 쪽지로 문의주시기 바랍니다.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseSix">[거래]사기를 당하면 어떻게 처리해야 되나요?</a>
									</h4>
								</div>
								<div id="collapseSix" class="panel-collapse collapse">
									<div class="panel-body">
										저희 KOBOOK 에서는 당사자간의 거래에 대해 직접관여하지 않으므로, 피해를 당하셨을 경우 유관기관에 직접
										신고를 하여 처리하셔야 합니다.<br> <br> 1. 증거자료 수집<br> 상대방과
										거래한 가능한 많은 증거자료가 필요합니다.<br> 대화내역 등은 삭제하지 마시고 꼭 캡쳐하여 별도
										보관하세요.<br>
									</div>
									<div class="panel-body">
										2. 신고합니다 게시판에 글 등록<br> KOBOOK에서 처리해 드릴 수 있는 부분은, 사실확인 후
										신고된 상대방의 상점이 활동하지 못하도록 계정을 정지하여 드리는 것입니다.<br> [신고합니다
										게시판]을 통해 제보해 주실 수 있습니다.<br> 처리절차는 다음과 같습니다. (신고합니다 게시판을
										통해 증거자료 제출 - 사실여부 확인 - 계정정지)<br> <br> &lt;신고사유에 따른
										필요 내용&gt;<br> • 상태불량 : 실제수령한 상품이미지 등 관련자료 이미지 첨부<br>
										• 착불 : 선불로 협의한 대화내용(카톡, 번개톡 등) 등 관련 자료 이미지 첨부<br> • 교환 :
										상점에 등록 된 신고자(본인)의 상품과 상대방의 상품기재(본인상품, 상대방의 상품 추가금 발생했다면 기재)<br>
									</div>
									<div class="panel-body">
										3. 경찰서 민원봉사실이나 사이버안전국에 신고<br> <br> - 경찰청<br> <a
											href="http://www.police.go.kr/main.html">http://www.police.go.kr/main.html</a><br>
										1) 경찰서 민원봉사실 방문(형사상 처리를 통해 검거 또는 보상이 필요할 경우)<br> 지구대에선 해당
										업무를 하지 않습니다.<br> 2) 고소장을 작성합니다. 작성 방법은 방문하면 봉사실에서 알려드립니다.<br>
										3) 사건사실확인서 발급을 요청합니다.<br> 4) 사건사실확인서를 가지고 상대방의 은행에 방문하여
										계좌지급정지 신청을 합니다.<br> 5) 범인이 검거되기를 기다립니다.<br> <br>
										준비자료<br> 피해자 인적사항, 피해일시, 해당사이트, ID 또는 상점명, 거래내역<br>
										상대상점의 개인정보는 개인정보보호법에 의해 신고인에게 직접 제공할 수 없음을 양해부탁드립니다<br> <br>
										- 경찰청 사이버안전국<br> <a
											href="http://cyberbureau.police.go.kr/crime/sub1.jsp">http://cyberbureau.police.go.kr/crime/sub1.jsp</a><br>
										해당 사이트에 방문하여 증거자료를 첨부하여 안내에 따라 작성하시면 됩니다.<br>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseSeven">[거래]거래사기유형 - 주의할 점</a>
									</h4>
								</div>
								<div id="collapseSeven" class="panel-collapse collapse">
									<div class="panel-body">
										거래사기유형 참조 링크 <a href="http://sfizz.blog.me/220200151804">http://sfizz.blog.me/220200151804</a><br>
										<br> 1. 증거자료<br> 모든 대화내용을 저장해 놓으셔야 합니다. 송금하셨을 경우엔 꼭
										입금증 등의 증거도 준비해 두세요.<br> 이러한 자료는 혹시모를 사고가 있을 경우 신고 자료로
										활용하게 된답니다.<br>
									</div>
									<div class="panel-body">
										2. 통화<br> 무턱대고 입금시킬 수는 없겠죠? 꼭 목소리 한 번 들어보세요. 의외로 사기꾼들은
										통화가 잘 안되는경우가 많습니다.<br>
									</div>
									<div class="panel-body">
										3. 거래사기유형의 파악<br> 전형적인 거래사기 방법이, 직거래 가능하다고 하고선 결정적일 때 말을
										바꾸는 것입니다.<br> 그리고 발송약속이나, 환불약속을 번복하면서 차일피일 미루거나 잠적을 하기도
										하니,<br> 가급적 그 사람의 거래 기록이나, 상점개설 기간 등을 잘 파악하셔서 거래하세요.<br>
										<br> [직거래시]<br> 만나는 장소와 시간을 정하는 것이 중요합니다. <br>
										장소의 경우 지하철역 또는 카페와 같이 사람이 많은 곳이 안전하며 가능하면 밤 늦은 시각은 위험하니 피하시는
										것이 좋습니다.<br> 구매자의 경우 판매자를 만났다면 시간이 다소 걸리더라도 물건에 하자가 없는지
										꼼꼼히 확인하는 것이 매우 중요합니다.<br> 약속시간은 반드시 지켜주시고, 만약 약속장소에 나가지
										못하게 될 때나 늦게 될 경우에는<br> 미리 미리 상대방에게 연락해주는 센스~!!를 발휘해주세요.<br>
										<br> [택배거래시]<br> 구매자의 경우 물건의 상태를 직접 확인할 수 없기 때문에
										판매자로부터 물건에 대한 정보를 꼼꼼히 얻는 것이 중요합니다.<br> (하자여부, 실제상품사진) 물건
										가격에 택배비가 포함된(택포) 거래인지, 택배비를 별도로 지불하는(착불) 거래인지 정확한 확인이 필요하며,<br>
										판매자가 택배를 보냈을 경우 송장번호를 꼭 미리 받아두는 습관을 가지면 좋습니다.<br> ※ 만약의
										경우를 대비해 상세 사진, 상세 설명 자료 및 기타 대화 내용을 보관해두세요.<br> 택배 거래를 할
										경우 보통의 거래 순서는 아래와 같습니다.<br> * 판매자 계좌전달 => 구매자 입금 => 판매자가
										입금 확인 후 물건 배송, 구매자에게 송장번호 전달 => 구매자 물건 수령 후 하자유무 확인 <br>
										<br> [교환거래시]<br> 교환을 할 경우 양측이 서로가 받을 물건과 보내줄 물건에 한해
										약속을 먼저 분명히 합니다.<br> 그리고 택배비를 서로 선불로할 것인지 아니면 착불로할 것인지를
										결정하며, 물건은 같은 날에 서로 보내도록 합니다.<br> 교환의 경우 환불이 어렵기 때문에 더욱
										세밀한 확인이 필요합니다.<br>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseEight">[안전한 구매팁] 1. 상품선택</a>
									</h4>
								</div>
								<div id="collapseEight" class="panel-collapse collapse">
									<div class="panel-body">
										구매하고자 하는 상품페이지의 상세설명은 꼼꼼히 확인하세요.<br> 거래전 판매상점에 대한 리뷰,
										상품정보 등을 확인해두시면 좋습니다.<br> 또한 지나치게 저렴하다면 조심&amp;의심하세요.<br>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseNine">[안전한 구매팁] 2. 연락하기</a>
									</h4>
								</div>
								<div id="collapseNine" class="panel-collapse collapse">
									<div class="panel-body">
										KOBOOK에서 지원하는 회원끼리 쪽지기능을 통해 판매자와 상품의 하자, 재고여부, 착샷 등 상품정보를
										확인해주세요.<br> 안전거래를 위해 문자, 전화 보다는 쪽지를 통해 연락하시기 바랍니다.<br>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseTen">[안전한 구매팁] 3. 발송문의</a>
									</h4>
								</div>
								<div id="collapseTen" class="panel-collapse collapse">
									<div class="panel-body">
										상품을 구매하기로 했다면 착불/선불여부, 발송일자 문의는 꼭 상의해주세요.<br> 계좌정보와
										판매자정보가 동일한지도 알아두시면 좋아요.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseEleven">[안전한 구매팁] 4. 구매하기</a>
									</h4>
								</div>
								<div id="collapseEleven" class="panel-collapse collapse">
									<div class="panel-body">
										판매자의 계좌정보로 상품금액을 입금했다면 입금완료내역을 판매자에게 알려주시고, 배송주소를 알려주세요.<br>
										운송장번호는 꼭 알아두시고, 직거래가 불가하거나 고가의 제품이라면 안전결제서비스를 이용하시는 것도 좋습니다.<br>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseTweleve">[안전한 구매팁] 5. 수령완료</a>
									</h4>
								</div>
								<div id="collapseTweleve" class="panel-collapse collapse">
									<div class="panel-body">
										상품 배송완료 되었다면 판매자에게 정확한 리뷰를 작성해주세요.<br> 만약 물품이 판매자가 알려준
										상태와 다르다면 관련자료들을 첨부하여 신고합니다 게시판으로 신고해주세요.<br> 구매했으나 상품이 오지
										않았다면 운송장번호를 확인하여 배송상태를 확인하시고,<br> 시일이 지났는데도 판매자가 미발송,
										연락두절이라면 KOBOOK 내 쪽지하기로 문의 주세요!<br> 문의에 대해 빠르게 처리 도와드릴 수
										있도록 하겠습니다.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 여기까지 -->
	</section>
	<!--end wrapper-->

	<!--start footer-->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>About Us</span>
						</h4>
					</div>
					<div class="widget_content">
						<p>Donec earum rerum hic tenetur ans sapiente delectus, ut aut
							reiciendise voluptat maiores alias consequaturs aut perferendis
							doloribus asperiores.</p>
						<ul class="contact-details-alt">
							<li><i class="fa fa-map-marker"></i>
								<p>
									<strong>Address</strong>: #2021 Lorem Ipsum
								</p></li>
							<li><i class="fa fa-user"></i>
								<p>
									<strong>Phone</strong>:(+91) 9000-12345
								</p></li>
							<li><i class="fa fa-envelope"></i>
								<p>
									<strong>Email</strong>: <a href="#">mail@example.com</a>
								</p></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>Recent Posts</span>
						</h4>
					</div>
					<div class="widget_content">
						<ul class="links">
							<li><a href="#">Aenean commodo ligula eget dolor<span>November
										07, 2015</span></a></li>
							<li><a href="#">Temporibus autem quibusdam <span>November
										05, 2015</span></a></li>
							<li><a href="#">Debitis aut rerum saepe <span>November
										03, 2015</span></a></li>
							<li><a href="#">Et voluptates repudiandae <span>November
										02, 2015</span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>Twitter</span>
						</h4>

					</div>
					<div class="widget_content">
						<ul class="tweet_list">
							<li class="tweet_content item">
								<p class="tweet_link">
									<a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur
									adipiscing eli
								</p> <span class="time">29 September 2015</span>
							</li>
							<li class="tweet_content item">
								<p class="tweet_link">
									<a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur
									adipiscing eli
								</p> <span class="time">29 September 2015</span>
							</li>
							<li class="tweet_content item">
								<p class="tweet_link">
									<a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur
									adipiscing eli
								</p> <span class="time">29 September 2015</span>
							</li>
						</ul>
					</div>
					<div class="widget_content">
						<div class="tweet_go"></div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span>Flickr Gallery</span>
						</h4>
					</div>
					<div class="widget_content">
						<div class="flickr">
							<ul id="flickrFeed" class="flickr-feed"></ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--end footer-->

	<section class="footer_bottom">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<p class="copyright">
						&copy; Copyright 2017 Electrify | Powered by <a
							href="http://www.jqueryrain.com/">jQuery Rain</a>
					</p>
				</div>

				<div class="col-sm-6 ">
					<div class="footer_social">
						<ul class="footbot_social">
							<li><a class="fb" href="#." data-placement="top"
								data-toggle="tooltip" title="Facebook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twtr" href="#." data-placement="top"
								data-toggle="tooltip" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a class="dribbble" href="#." data-placement="top"
								data-toggle="tooltip" title="Dribbble"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="skype" href="#." data-placement="top"
								data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
							<li><a class="rss" href="#." data-placement="top"
								data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="../js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="../js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script type="text/javascript" src="../js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="../js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/owl.carousel.js"></script>
	<!-- Popover-JS -->
	<script type="text/javascript" src="../js/jflickrfeed.js"></script>
	<script type="text/javascript" src="../js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="../js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="../js/swipe.js"></script>
	<script type="text/javascript" src="../js/jquery-scrolltofixed-min.js"></script>

	<script src="../js/main.js"></script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>