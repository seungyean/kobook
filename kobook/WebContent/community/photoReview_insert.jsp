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
<title>Kobook/photoReview</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

 <!-- CSS FILES -->
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />
</head>
<body class="home">
	<!-- 헤더 -->
 		 <jsp:include page="/include/header.jsp" />
  	<!-- /헤더 -->
	

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>포토 리뷰 게시판</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">홈</a>/</li>
								<li>커뮤니티 /</li>
								<li>포토리뷰</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!-- 여기서부터 -->
		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-6 col-sm-6">
						<div class="dividerHeading">
							<h4>
								<span>포토 리뷰 글 작성</span>
							</h4>
						</div>
						<!-- 나중에 로그인되면 아래 person_id의 value는 sessionid로 변경 -->
						<form action="photoInsertAction.do" id="registerform"
							method="post" name="registerform" enctype="multipart/form-data">
							<div class="form-group">
								<input type="text" class="form-control" name="person_id"
									value="3" placeholder="작성자 id(현재int)">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="photo_title"
									placeholder="글 제목">
							</div>
							<div class="form-group">
								<input type="file" class="form-control" name="photo_img">
							</div>
							<div class="form-group">
								<textarea rows="10" cols="73" class="form-control"
									name="photo_content" placeholder="글 내용"></textarea>
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn-default btn-lg button"
									value="작성 완료">
							</div>
						</form>
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