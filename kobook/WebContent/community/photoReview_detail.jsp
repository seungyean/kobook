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
<link rel="stylesheet" href="/BoardProject/css/bootstrap.min.css" />
<link rel="stylesheet" href="/BoardProject/css/style.css">
<link rel="stylesheet" type="text/css" href="/BoardProject/css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="/BoardProject/css/layout/wide.css" data-name="layout">
<link rel="stylesheet" href="/BoardProject/css/animate.css" type="text/css" />

<link rel="stylesheet" type="text/css" href="/BoardProject/css/switcher.css"
	media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<script type="text/javascript">
	function fn_update() {
		location.href="photoUpdateForm.do?photo_id=${photo.photo_id}";
	}
	function fn_delete() {
		location.href="photoDelete.do?photo_id=${photo.photo_id}";
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
								<a href="/BoardProject/main/main.jsp">KOBOOK</a>
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
									<li><a href="/BoardProject/main/main.jsp">Home</a></li>

									<li><a href="/BoardProject/search/allSearch.jsp">전체검색</a></li>
									<li><a href="/BoardProject/search/major.jsp">전공검색</a></li>
									<li><a href="/BoardProject/search/location.jsp">지역검색</a></li>

									<li><a href="/BoardProject/community/blackList.jsp">커뮤니티</a>
										<ul class="dropdown-menu">
											<li><a href="blackList.do">신고합니다</a></li>
											<li><a href="donateList.do">무료나눔</a></li>
											<li><a href="photoReviewList.do">포토리뷰</a></li>
											<li><a href="/BoardProject/community/noti.jsp">공지사항</a></li>
											<li><a href="qna.do">자주묻는질문</a></li>
										</ul></li>

									<li><a href="/BoardProject/mypage/cart.jsp">마이페이지</a>
										<ul class="dropdown-menu">
											<li><a href="/BoardProject/mypage/userUpdate.jsp">회원정보수정</a></li>
											<li><a href="/BoardProject/mypage/cart.jsp">장바구니</a></li>
											<li><a href="/BoardProject/mypage/mileage.jsp">마일리지</a></li>
											<li><a href="/BoardProject/mypage/pickList.jsp">찜 리스트</a></li>
											<li><a href="/BoardProject/mypage/buyList.jsp">구매내역</a></li>
											<li><a href="/BoardProject/mypage/sellList.jsp">판매내역</a></li>
											<li><a href="/BoardProject/mypage/reviewList.jsp">판매후기</a></li>
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
							<h2>포토 리뷰 상세보기</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">홈</a>/</li>
								<li>커뮤니티 /</li>
								<li>포토 리뷰</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!-- 여기서부터 -->
<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-8 col-md-8 col-sm-8">
						<!--Project Details Page-->
						<div class="porDetCarousel">
							<div class="carousel-content">
								<img src="/BoardProject/upload/${photo.photo_img}" alt="NO IMAGE" height="500" width="700">
							</div>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-4 col-sm-4">
<!-- 					
 						<div class="project_description">
							<div class="widget_title">
								<h4><span>Project Descriptions</span></h4>
							</div>

							<p>Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt ut aut reiciendise voluptat maiores alias aut et perferendis doloribus asperiores ut labore.</p>
							<p> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
						  -->
						
						<div class="project_details">
							<div class="widget_title">
								<h4><span>${photo.photo_title }</span></h4>
							</div>
							<ul class="details">
								<li><span><i class="fa fa-pencil"></i>글번호 :</span>${photo.photo_id }</li>
								<li><span><i class="fa fa-user"></i>작성자 :</span>${photo.person_id }</li>
								<li><span><i class="fa fa-file-text"></i>내용 :</span> ${photo.photo_content }</li>
								<li><span><i class="fa fa-calendar"></i>작성일 :</span>
								<fmt:formatDate value="${photo.photo_date }" pattern="MMM dd, yyyy" /></li>
								<li><span><i class="fa fa-heart"></i>좋아요 :</span> ${photo.photo_heart }</li>
								<li><span><i class="fa fa-eye"></i>조회수 :</span>${photo.photo_hit }</li>
							</ul>
							<c:if test="${photo.photo_heart==0 }">
							<a href="photoHeartUp.do?photo_id=${photo.photo_id}"><i class="fa fa-thumbs-o-up">추천하기</i></a>
							</c:if>
							<c:if test="${photo.photo_heart>0 }">
							<a href="photoHeartUp.do?photo_id=${photo.photo_id}"><i class="fa fa-thumbs-o-up">추천하기</i></a>
							<a href="photoHeartDown.do?photo_id=${photo.photo_id}"><i class="fa fa-thumbs-o-down">추천해제</i></a>
							</c:if>
							
							<input type="button" class="btn btn-lg btn-default" value="수정" onclick="fn_update()">
							<input type="button" class="btn btn-lg btn-default" value="삭제" onclick="fn_delete()">
						</div>
					</div>
				</div>

<!--                 
<div class="row sub_content">
                    <div class="col-md-12">
                        <div class="dividerHeading">
                            <h4><span>Recent Work</span></h4>
                        </div>
                        <div id="recent-work-slider" class="owl-carousel">
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_1.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_2.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_3.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_4.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_5.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_6.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_6.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>

                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_7.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_7.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>

                            <div class="recent-item box">
                                <figure class="touching ">
                                    <img src="/BoardProject/images/portfolio/portfolio_8.png" alt=""/>
                                    <div class="option inner">
                                        <div>
                                            <h5>Touch and Swipe</h5>
                                            <a href="/BoardProject/images/portfolio/full/portfolio_8.png" class="fa fa-search mfp-image"></a>
                                            <a href="portfolio_single.html" class="fa fa-link"></a>
                                            <span>Mobile</span>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
                -->
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

	<script type="text/javascript" src="/BoardProject/js/jquery-1.10.2.min.js"></script>
	<script src="/BoardProject/js/bootstrap.min.js"></script>
	<script src="/BoardProject/js/jquery.easing.1.3.js"></script>
	<script src="/BoardProject/js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="/BoardProject/js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="/BoardProject/js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script type="text/javascript" src="/BoardProject/js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="/BoardProject/js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="/BoardProject/js/owl.carousel.js"></script>
	<!-- Popover-JS -->
	<script type="text/javascript" src="/BoardProject/js/jflickrfeed.js"></script>
	<script type="text/javascript" src="/BoardProject/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="/BoardProject/js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="/BoardProject/js/swipe.js"></script>
	<script type="text/javascript" src="/BoardProject/js/jquery-scrolltofixed-min.js"></script>

	<script src="/BoardProject/js/main.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$.fn.carousel = function(op) {
				var op, ui = {};
				op = $.extend({
					speed: 500,
					autoChange: false,
					interval: 5000
				}, op);
				ui.carousel = this;
				ui.items    = ui.carousel.find('.carousel-item');
				ui.itemsLen = ui.items.length;

				// CREATE CONTROLS
				ui.ctrl 	= $('<div />', {'class': 'carousel-control'});
				ui.prev 	= $('<div />', {'class': 'carousel-prev'});
				ui.next 	= $('<div />', {'class': 'carousel-next'});
				ui.pagList  = $('<ul />', {'class': 'carousel-pagination'});
				ui.pagItem  = $('<li></li>');
				for (var i = 0; i < ui.itemsLen; i++) {
					ui.pagItem.clone().appendTo(ui.pagList);
				}
				ui.prev.appendTo(ui.ctrl);
				ui.next.appendTo(ui.ctrl);
				ui.pagList.appendTo(ui.ctrl);
				ui.ctrl.appendTo(ui.carousel);
				ui.carousel.find('.carousel-pagination li').eq(0).addClass('active');
				ui.carousel.find('.carousel-item').each(function() {
					$(this).hide();
				});
				ui.carousel.find('.carousel-item').eq(0).show().addClass('active');
				
				
				// CHANGE ITEM
				var changeImage = function(direction, context) {
					var current = ui.carousel.find('.carousel-item.active');

					if (direction == 'index') {
						if(current.index() === context.index())
							return false;

						context.addClass('active').siblings().removeClass('active');

						ui.items.eq(context.index()).addClass('current').fadeIn(op.speed, function() {
							current.removeClass('active').hide();
							$(this).addClass('active').removeClass('current');
						});
					} 

					if (direction == 'prev') {
						if (current.index() == 0) {
							ui.carousel.find('.carousel-item:last').addClass('current').fadeIn(op.speed, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
						else {
							current.prev().addClass('current').fadeIn(op.speed, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
					}

					if (direction == undefined) {
						if (current.index() == ui.itemsLen - 1) {
							ui.carousel.find('.carousel-item:first').addClass('current').fadeIn(300, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
						else {
							current.next().addClass('current').fadeIn(300, function() {
								current.removeClass('active').hide();
								$(this).addClass('active').removeClass('current');
							});
						}
					}
					ui.carousel.find('.carousel-pagination li').eq( ui.carousel.find('.carousel-item.current').index() ).addClass('active').siblings().removeClass('active');
				};

				ui.carousel
					.on('click', 'li', function() {
						changeImage('index', $(this));
					})
					.on('click', '.carousel-prev', function() {
						changeImage('prev');
					})
					.on('click', '.carousel-next', function() {
						changeImage();
					});
				
				// AUTO CHANGE
				if (op.autoChange) {
					var changeInterval = setInterval(changeImage, op.interval);
					ui.carousel
						.on('mouseenter', function() {
							clearInterval(changeInterval);
						})
						.on('mouseleave', function() {
							changeInterval = setInterval(changeImage, op.interval);
						});
				}
				return this;
			};
			
			$('.porDetCarousel').each(function() {
				$(this).carousel({
					autoChange: true
				});
			});
		});
	</script>
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>