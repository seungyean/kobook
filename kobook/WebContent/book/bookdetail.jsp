<%@page import="kobook.book.domain.Search"%>
<%@page import="kobook.book.domain.Book"%>
<%@page import="java.util.List"%>
<%@page import="kobook.book.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <%
	Book book = (Book)request.getAttribute("book");
%> --%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Portfolio Single - Electrify Responsive Multipurpose
	Template</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS FILES -->
<link rel="stylesheet" href="/kobook/css/bootstrap.min.css" />
<link rel="stylesheet" href="/kobook/css/style.css">
<link rel="stylesheet" type="text/css" href="/kobook/css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

<link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css"
	media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>


<body>
	<!--Start Header-->
	<header id="header">
		<div id="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 top-info hidden-xs">
						<span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span> <span><i
							class="fa fa-envelope"></i>Email: mail@example.com</span>
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
								<a href="/index.html"><img alt="logo" src="/images/logo.png" /></a>
							</h1>
						</div>
					</div>
					<!-- Navigation
    ================================================== -->
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
									<li><a href="#">Home</a>
										<ul class="dropdown-menu">
											<li><a href="index.html">Home 1</a></li>
											<li><a href="index_2.html">Home 2</a></li>
											<li><a href="index_3.html">Home 3</a></li>
											<li><a href="index_4.html">Home 4</a></li>
											<li><a href="index_5.html">Home 5</a></li>
											<li><a href="index_6.html">Home 6</a></li>
											<li><a href="index_7.html">Home 7</a></li>
										</ul></li>

									<li><a href="#">Shortcodes</a>
										<ul class="dropdown-menu">
											<li><a href="elements.html">Elements</a></li>
											<li><a href="form-elements.html">Form Elements</a></li>
											<li><a href="columns.html">Columns</a></li>
											<li><a href="typography.html">Typography</a></li>
											<li><a href="pricing-tables.html">Pricing Tables</a></li>
											<li><a href="animation.html">Animation</a></li>
											<li><a href="icons.html">Icons</a></li>
										</ul></li>

									<li><a href="#">Pages</a>
										<ul class="dropdown-menu">
											<li><a href="about.html">About</a>
												<ul class="dropdown-menu">
													<li><a href="about.html">About Us 1</a></li>
													<li><a href="about-2.html">About Us 2</a></li>
												</ul></li>
											<li><a href="services.html">Services</a></li>
											<li><a href="faq.html">FAQ</a></li>
											<li><a href="sidebar-right.html">Right Sidebar</a></li>
											<li><a href="sidebar-left.html">Left Sidebar</a></li>
											<li><a href="404-page.html">404 Page</a></li>
										</ul></li>

									<li class="active"><a href="#">Portfolio</a>
										<ul class="dropdown-menu">
											<li><a href="#">Portfolio Classic</a>
												<ul class="dropdown-menu">
													<li><a href="portfolio_2.html">Portfolio 2</a></li>
													<li><a href="portfolio_3.html">Portfolio 3</a></li>
													<li><a href="portfolio_4.html">Portfolio 4</a></li>
												</ul></li>
											<li><a href="portfolio_masonry_3.html">Portfolio
													Masnory</a>
												<ul class="dropdown-menu">
													<li><a href="portfolio_masonry_2.html">Masonry
															portfolio 2</a></li>
													<li><a href="portfolio_masonry_3.html">Masonry
															portfolio 3</a></li>
													<li><a href="portfolio_masonry_4.html">Masonry
															portfolio 4</a></li>
												</ul></li>

											<li class="active"><a href="portfolio_single.html">Portfolio
													Single</a>
												<ul class="dropdown-menu">
													<li class="active"><a href="portfolio_single.html">Portfolio
															Single 1</a></li>
													<li><a href="portfolio_single_2.html">Portfolio
															Single 2</a></li>
													<li><a href="portfolio_single_3.html">Portfolio
															Single 3</a></li>
												</ul></li>
										</ul></li>

									<li><a href="#">Blog</a>
										<ul class="dropdown-menu">
											<li><a href="portfolio_masonry_3.html">Masnory Blog
													Style</a>
												<ul class="dropdown-menu">
													<li><a href="blog-masonry-two.html">Blog Masonry 2</a></li>
													<li><a href="blog-masonry-three.html">Blog Masonry
															3</a></li>
													<li><a href="blog-masonry-four.html">Blog Masonry
															4</a></li>
												</ul></li>
											<li><a href="portfolio_masonry_3.html">Classic Blog
													Style</a>
												<ul class="dropdown-menu">
													<li><a href="blog-large-image.html">Large Image</a></li>
													<li><a href="blog-medium-image.html">Medium Image</a></li>
												</ul></li>
											<li><a href="blog-post.html">Single Post</a></li>
										</ul></li>

									<li><a href="#">Contact</a>
										<ul class="dropdown-menu">
											<li><a href="contact_1.html">Contact 1</a></li>
											<li><a href="contact_2.html">Contact 2</a></li>
											<li><a href="contact_3.html">Contact 3</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--End Header-->

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>도서 상세보기</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">Home</a>/</li>
								<li>Portfolio</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>






		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
			
			
				<form action="/kobook/book/updateForm.do" method="post">
					<div class="col-lg-8 col-md-8 col-sm-8">
						<!--Project Details Page-->
						<div class="porDetCarousel">
						
							<div class="carousel-content">
							
				
							<input type="hidden" name="book_id" value="${book.book_id}" />
						
									<img alt="" class="carousel-item" src="/kobook/upload/${book.book_img}" height="350" width="400">
								<!--<img class="carousel-item" src="images/portfolio/portfolio_slider1.png" alt="">
								<img class="carousel-item" src="images/portfolio/portfolio_slider2.png" alt="">
								<img class="carousel-item" src="images/portfolio/portfolio_slider3.png" alt=""> -->
									
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="project_description">
							<div class="widget_title">
								<h4>
									<span>내용</span>
								</h4>
							</div>
						<p>${book.book_content}</p>
						</div>

					<div class="project_details">
							<div class="widget_title">
								<h4>
									<span>상세내용</span>
								</h4>
							</div>
							
							<ul class="details">
								<li><span>책이름 :</span>${book.book_name}</li>
								<li><span>책종류 :</span>${book.book_kind}</li>
								<li><span>부가설명 :</span>${book.book_hash}</li>
								<li><span> 원가:</span> ${book.book_o_price}</li>
								<li><span> 판매가:</span> ${book.book_m_price}</li>
								<li><span> 판 :</span>${book.book_edition}</li>
								<li><span>출판사 :</span>${book.book_publish}</li>
								<li><span>안심여부사용 :</span>${book.book_safe_yn}</li>
								<li><span>책상태 :</span>
								<c:choose>
								<c:when test="${book.book_status=='G'}">
								양호
								</c:when>
								
								<c:when test="${book.book_status=='N'}">
								보통
								</c:when>
								
								<c:when test="${book.book_status=='B'}">
								나쁨
								</c:when>
								
								</c:choose>
								</li>
								
								
								<li><span>판매상태</span>
								<c:choose>
								<c:when test="${book.book_sell_state=='I'}">
								판매중
								</c:when>
								
								<c:when test="${book.book_sell_state=='C'}">
								판매완료
								</c:when>
								</c:choose>
								</li>
								<input type="submit" value="수정하기" id="submit" class="btn btn-default btn-lg button">
							</form>
		
							<!-- 	<input type="button" value="장바구니" id="submit"
									class="btn btn-default btn-lg button">
								<input type="button" value="찜" id="submit"
									class="btn btn-default btn-lg button"> -->
							 </ul> 
						</div>
					</div>
				</div>



				<div class="row sub_content">
					<div class="col-md-12">
						<div class="dividerHeading">
							<h4>
								<span>판매자에 대한 후기</span>
							</h4>
						</div>
						<div id="recent-work-slider" class="owl-carousel">
							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_1.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_1.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>
							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_2.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_2.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>
							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_3.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_3.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>
							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_4.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_4.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>
							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_5.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_5.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>
							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_6.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_6.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>

							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_7.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_7.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
							</div>

							<div class="recent-item box">
								<figure class="touching ">
									<img src="images/portfolio/portfolio_8.png" alt="" />
									<div class="option inner">
										<div>
											<h5>Touch and Swipe</h5>
											<a href="images/portfolio/full/portfolio_8.png"
												class="fa fa-search mfp-image"></a> <a
												href="portfolio_single.html" class="fa fa-link"></a> <span>Mobile</span>
										</div>
									</div>
								</figure>
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
				<div class="col-sm-6 ">
					<p class="copyright">
						&copy; Copyright 2015 Electrify | Powered by <a
							href="http://www.jqueryrain.com/">jQuery Rain</a>
					</p>
				</div>
				<div class="col-sm-6 ">
					<div class="footer_social">
						<ul class="footbot_social">
							<li><a class="fb" href="#." data-placement="top"
								data-toggle="tooltip" title="Facbook"><i
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

	<script type="text/javascript" src="/kobook/js/jquery-1.10.2.min.js"></script>
	<script src="/kobook/js/bootstrap.min.js"></script>
	<script src="/kobook/js/jquery.easing.1.3.js"></script>
	<script src="/kobook/js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="/kobook/js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script type="text/javascript" src="/kobook/js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="/kobook/js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="/kobook/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="/kobook/js/jflickrfeed.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="/kobook/js/swipe.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery-scrolltofixed-min.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery-hoverdirection.min.js"></script>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$.fn.carousel = function(op) {
								var op, ui = {};
								op = $.extend({
									speed : 500,
									autoChange : false,
									interval : 5000
								}, op);
								ui.carousel = this;
								ui.items = ui.carousel.find('.carousel-item');
								ui.itemsLen = ui.items.length;

								// CREATE CONTROLS
								ui.ctrl = $('<div />', {
									'class' : 'carousel-control'
								});
								ui.prev = $('<div />', {
									'class' : 'carousel-prev'
								});
								ui.next = $('<div />', {
									'class' : 'carousel-next'
								});
								ui.pagList = $('<ul />', {
									'class' : 'carousel-pagination'
								});
								ui.pagItem = $('<li></li>');
								for (var i = 0; i < ui.itemsLen; i++) {
									ui.pagItem.clone().appendTo(ui.pagList);
								}
								ui.prev.appendTo(ui.ctrl);
								ui.next.appendTo(ui.ctrl);
								ui.pagList.appendTo(ui.ctrl);
								ui.ctrl.appendTo(ui.carousel);
								ui.carousel.find('.carousel-pagination li').eq(
										0).addClass('active');
								ui.carousel.find('.carousel-item').each(
										function() {
											$(this).hide();
										});
								ui.carousel.find('.carousel-item').eq(0).show()
										.addClass('active');

								// CHANGE ITEM
								var changeImage = function(direction, context) {
									var current = ui.carousel
											.find('.carousel-item.active');

									if (direction == 'index') {
										if (current.index() === context.index())
											return false;

										context.addClass('active').siblings()
												.removeClass('active');

										ui.items.eq(context.index()).addClass(
												'current').fadeIn(
												op.speed,
												function() {
													current.removeClass(
															'active').hide();
													$(this).addClass('active')
															.removeClass(
																	'current');
												});
									}

									if (direction == 'prev') {
										if (current.index() == 0) {
											ui.carousel
													.find('.carousel-item:last')
													.addClass('current')
													.fadeIn(
															op.speed,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										} else {
											current
													.prev()
													.addClass('current')
													.fadeIn(
															op.speed,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										}
									}

									if (direction == undefined) {
										if (current.index() == ui.itemsLen - 1) {
											ui.carousel
													.find(
															'.carousel-item:first')
													.addClass('current')
													.fadeIn(
															300,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										} else {
											current
													.next()
													.addClass('current')
													.fadeIn(
															300,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										}
									}
									ui.carousel
											.find('.carousel-pagination li')
											.eq(
													ui.carousel
															.find(
																	'.carousel-item.current')
															.index()).addClass(
													'active').siblings()
											.removeClass('active');
								};

								ui.carousel.on('click', 'li', function() {
									changeImage('index', $(this));
								}).on('click', '.carousel-prev', function() {
									changeImage('prev');
								}).on('click', '.carousel-next', function() {
									changeImage();
								});

								// AUTO CHANGE
								if (op.autoChange) {
									var changeInterval = setInterval(
											changeImage, op.interval);
									ui.carousel.on('mouseenter', function() {
										clearInterval(changeInterval);
									}).on(
											'mouseleave',
											function() {
												changeInterval = setInterval(
														changeImage,
														op.interval);
											});
								}
								return this;
							};

							$('.porDetCarousel').each(function() {
								$(this).carousel({
									autoChange : true
								});
							});
						});
	</script>
	<script src="js/main.js"></script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>
