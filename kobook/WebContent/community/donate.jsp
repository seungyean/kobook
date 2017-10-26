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
<title>Kobook/donate</title>
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
							<h2>무료 나눔 게시판</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">홈</a>/</li>
								<li>커뮤니티 /</li>
								<li>무료나눔</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>

		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4>
								<span>무료 나눔 리스트</span>
							</h4>
							<br> <br>
							<form action="donateInsertform.do" method="post">
								<table class="table table-hover">
									<thead>
										<tr>
											<td align="center">No</td>
											<td align="center">이미지</td>
											<td>글 제목</td>
											<td align="center">작성자</td>
											<td align="center">작성일</td>
											<td align="center">조회수</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="donate" items="${listModel.list}">
											<tr>
												<td align="center">${donate.donate_id}</td>
												<td align="center"><a
													href="donateDetail.do?donate_id=${donate.donate_id}"> <c:if
															test="${donate.donate_img != null }">
															<c:set var="head"
																value="${fn:substring(donate.donate_img, 0, fn:length(donate.donate_img)-4) }"></c:set>
															<c:set var="pattern"
																value="${fn:substring(donate.donate_img, fn:length(head) +1, fn:length(donate.donate_img)) }"></c:set>

															<c:choose>
																<c:when
																	test="${pattern == 'jpg' || pattern == 'gif' || pattern == 'png'}">
																	<img src="../upload/${head }_small.${pattern}" height="100" width="120">
																</c:when>
															</c:choose>
														</c:if> <c:if test="${donate.donate_img == null }">
															<img alt="NO IMAGE" src="">
														</c:if>
												</a></td>
												<td><a
													href="donateDetail.do?donate_id=${donate.donate_id}">${donate.donate_title }</a></td>
												<td align="center">${donate.person_id}</td>
												<td align="center"><fmt:formatDate
														value="${donate.donate_date }" pattern="yyyy-MM-dd" /></td>
												<td align="center">${donate.donate_hit }</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
								<input type="submit" value="글쓰기" class="btn-default">
							</form>
							<div align="right">
								<form action="donateList.do" method="post">
									<input type="hidden" name="temp" value="temp"> <input
										type="checkbox" name="area" value="donate_title">제목 <input
										type="checkbox" name="area" value="donate_content">내용
									<input type="text" name="searchKey"
										placeholder="Enter Search keywords..." size="25"> <input
										type="submit" class="btn-default" value="검색">
								</form>
							</div>
							<div class="col-sm-12 text-center">
								<ul class="pagination">
									<li><a href="donateList.do?pageNum=1">&#x27EA;</a></li>
									<li class="active"><c:if
											test="${listModel.startPage > 3 }">
											<a href="donateList.do?pageNum=${listModel.startPage -1}">
												&lang; </a>
										</c:if></li>
									<c:forEach var="pageNo" begin="${listModel.startPage}"
										end="${listModel.endPage}">
										<li><c:if test="${listModel.requestPage == pageNo }">

											</c:if> <a href="donateList.do?pageNum=${pageNo}">${pageNo}</a> <c:if
												test="${listModel.requestPage == pageNo }">

											</c:if></li>
									</c:forEach>
									<li><c:if
											test="${listModel.endPage < listModel.totalPageCount}">
											<a href="donateList.do?pageNum=${listModel.endPage +1}">
												&rang; </a>

										</c:if></li>
									<li><a
										href="donateList.do?pageNum=${listModel.totalPageCount}">
											&#x27EB; </a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
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