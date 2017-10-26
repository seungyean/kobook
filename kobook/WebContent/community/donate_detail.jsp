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
<script type="text/javascript">
	function fn_update() {
		location.href = "donateUpdateForm.do?donate_id=${donate.donate_id}";
	}
</script>
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
							<h2>무료 나눔 상세보기</h2>
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

		<section class="content blog">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
						<div class="blog_single">
							<article class="post">
								<form action="donateDelete.do" method="post">
									<input type="hidden" name="donate_id"
										value="${donate.donate_id}">
									<figure class="post_img">
										<img src="../upload/${donate.donate_img }" alt="NO IMAGE"
											height="400" width="250">
									</figure>
									<div class="post_date">
										<span class="day">${donate.donate_id }</span>
									</div>
									<div class="post_content">
										<div class="post_meta">
											<h2>${donate.donate_title }</h2>
											<div class="metaInfo">
												<span><i class="fa fa-calendar"></i> <fmt:formatDate
														value="${donate.donate_date }" pattern="MMM dd, yyyy" />
												</span> <span><i class="fa fa-user"></i> By
													${donate.person_id} </span> <span><i class="fa fa-eye"></i>
													${donate.donate_hit} </span>
												<!-- <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>  -->
												<span><input type="button"
													class="btn btn-lg btn-default" value="수정"
													onclick="fn_update()"> <input
													class="btn btn-lg btn-default" type="submit" value="삭제"></span>
											</div>
										</div>
										<blockquote class="default">
											${donate.donate_content }</blockquote>

									</div>
								</form>
							</article>
						</div>

						<!--News Comments-->
						<div class="news_comments">
							<div class="dividerHeading">
								<h4>
									<span>Comments</span>
								</h4>
							</div>

							<c:if test="${fn:length(replyList) > 0}">
								<div id="comment">
									<ul id="comment-list">
										<c:forEach var="reply" items="${replyList}">
											<li class="comment">
												<div class="comment-container">
													<h4 class="comment-author">
														<span>By, ${reply.person_id}</span>
													</h4>
													<div class="comment-meta">
														<a class="comment-date link-style1"><fmt:formatDate
																value="${reply.reply_date}" pattern="yy-MM-dd, HH:mm" /></a>
														<a
															href="donateReplyUpdateForm.do?donate_id=${reply.donate_id}&reply_id=${reply.reply_id}">
															수정</a> <a
															href="donateReplyDelete.do?reply_id=${reply.reply_id}">삭제</a>
														<!-- 댓글의 답글(추후보강) -->
														<!-- 		
														<a class="comment-reply-link link-style3" href="#respond">Reply &raquo;</a>
														-->
													</div>
													<div class="comment-body">
														<p>${reply.reply_content}</p>
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</c:if>
							<!-- /#comments -->
							<div class="dividerHeading">
								<h4>
									<span>Leave a comment</span>
								</h4>
							</div>
							<form action="donateReply.do" method="post">

								<input type="hidden" name="rDonate_id"
									value="${donate.donate_id}" />
								<div class="comment_form">
									<div class="row">
										<div class="col-sm-4">
											<input class="col-lg-4 col-md-4 form-control" type="text"
												size="30" id="name" name="rperson_id" value=""
												placeholder="person_id">
										</div>
									</div>
								</div>
								<div class="comment-box row">
									<div class="col-sm-12">
										<p>
											<textarea class="form-control" cols="60" rows="6"
												id="comments" name="reply_content" placeholder="Message"></textarea>
										</p>
									</div>
								</div>
								<input type="submit" class="btn btn-lg btn-default"
									value="댓글 작성" />
							</form>
						</div>


					</div>
				</div>
				<!--/.row-->
			</div>
			<!--/.container-->
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