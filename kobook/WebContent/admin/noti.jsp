<%@page import="kobook.admin.domain.ListModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	ListModel listModel = (ListModel)request.getAttribute("listModel");
%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Electrify Responsive Multipurpose Template</title>
<meta name="description" content="">

<!-- CSS FILES -->
<link rel="stylesheet" href="/kobook/css/bootstrap.min.css" />
<link rel="stylesheet" href="/kobook/css/style.css">
<link rel="stylesheet" type="/kobook/text/css"
	href="/kobook/css/style.css" media="screen" data-name="skins">
<link rel="stylesheet" href="/kobook/css/layout/wide.css"
	data-name="layout">

<link rel="stylesheet" type="/kobook/text/css"
	href="/kobook/css/switcher.css" media="screen" />
	
	
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
								<a href="index.html"><img alt="logo"
									src="/kobook/images/logo.png" /></a>
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
									<li><a href="/kobook/admin/listUser.do">회원관리</a>
										<ul class="dropdown-menu">
											<li><a href="index.html">회원수정</a></li>
											<li><a href="index_2.html">회원등급</a></li>
											<li><a href="index_3.html">회원분류</a></li>
										</ul></li>

									<li><a href="#">게시판관리(미구현)</a>
										<ul class="dropdown-menu">
											<li><a href="elements.html">게시판 1</a></li>
											<li><a href="form-elements.html">게시판 2</a></li>
											<li><a href="columns.html">게시판 3</a></li>
										</ul></li>

									<li class="active"><a href="#">안전거래관리(미구현)</a>
										<ul class="dropdown-menu">
											<li><a href="about.html">About</a>
												<ul class="dropdown-menu">
													<li><a href="about.html">About Us 1</a></li>
													<li><a href="about-2.html">About Us 2</a></li>
												</ul></li>
											<li><a href="services.html">Services</a></li>
											<li class="active"><a href="faq.html">FAQ</a></li>
											<li><a href="sidebar-right.html">Right Sidebar</a></li>
											<li><a href="sidebar-left.html">Left Sidebar</a></li>
											<li><a href="404-page.html">404 Page</a></li>
										</ul></li>

									<li><a href="/kobook/admin/insertBoard.do">공지사항관리</a>
										<ul class="dropdown-menu">
											<li><a href="#">Portfolio Classic</a>
												<ul class="dropdown-menu">
													<li><a href="portfolio_2.html">Portfolio 2</a></li>
													<li><a href="portfolio_3.html">Portfolio 3</a></li>
													<li><a href="portfolio_4.html">Portfolio 4</a></li>
												</ul></li>
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
							<h2>FAQ</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="noti.jsp">Home</a>/</li>
								<li>Pages</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
	</section>

	<section class="content faq">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
				</div>
			</div>

			<h3>글목록보기</h3>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                 <c:forEach var="board" items="${listModel.list}">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" 
                                       		 href="/kobook/admin/boardDetail.do?board_id=${board.board_id }">${board.board_title }
                                       </a>
                                    </h4>
                                 </c:forEach>
                                </div>
                            </div>
                               
<!--  			<table border="1" cellpadding="0" cellspacing="0">
				<tr height="30">
					<td width="50" align="center">글번호</td>
					<td width="100" align="center">글쓴이</td>
					<td width="350" align="center">글제목</td>
					<td width="150" align="center">작성일</td>
					<td width="100" align="center">조회수</td>
				</tr> -->
			
<%-- 				<c:forEach var="board" items="${listModel.list}">
 					<tr height="30">
						<td align="center">${board.board_id }</td>
						<td align="center">${board.board_writer }</td>
						<td align="center"><a href="boardDetail.do?board_id=${board.board_id }">${board.board_title }</a></td>
						<td align="center"><fmt:formatDate value="${board.board_date }"	pattern="yyyy-MM-dd" /></td>
						<td align="center">${board.board_hit }</td>
					</tr>
				</c:forEach> 
 			</table>  --%>				


			<!-- 페이징 처리 영역 -->

			<!-- 이전(기준은 start page) -->
			<c:if test="${listModel.startPage > 5 }">
				<a href="/kobook/admin/noti.do?pageNum=${listModel.startPage - 1 }">[이전]</a>
			</c:if>

			<!-- 페이지 목록 -->
			<c:forEach var="pageNo" begin="${listModel.startPage }"
				end="${listModel.endPage }">
				<c:if test="${listModel.requestPage == pageNo }">
					<b>
				</c:if>
				<a href="/kobook/admin/noti.do?pageNum=${pageNo }">[${pageNo }]</a>
				<c:if test="${listModel.requestPage == pageNo }">
					</b>
				</c:if>
			</c:forEach>
			<!-- 이후 -->
			<c:if test="${listModel.endPage < listModel.totalPageCount }">
				<a href="/kobook/admin/noti.do?pageNum=${listModel.endPage + 1 }">[이후]</a>
			</c:if> 
			
			<form action="/kobook/admin/insertformBoard.do" method="post">
				<input type="submit" value ="등록">
			</form>



			<!--Sidebar Widget-->
			<div class="col-lg-4">
				<div class="sidebar">
					<div class="widget widget_search">
						<div class="site-search-area">
							<!-- <form method="get" id="site-searchform" action="#">
										<div>
											<input class="input-text" name="s" id="s" placeholder="Enter Search keywords..." type="text" />
											<input id="searchsubmit" value="Search" type="submit" />
										</div>
									</form> -->
						</div>
						<!-- end site search -->
					</div>

					<div class="widget widget_categories">
						<div class="widget_title">
							<h4>
								<span>Categories</span>
							</h4>
						</div>
						<ul class="arrows_list list_style">
							<li><a href="#"> Grapic Design (10)</a></li>
							<li><a href="#"> Web Design & Development (25)</a></li>
							<li><a href="#"> Photography (29)</a></li>
							<li><a href="#"> Custom Illustrations (19)</a></li>
							<li><a href="#"> Wordpress Themes(38)</a></li>
							<li><a href="#"> Videography (33)</a></li>
						</ul>
					</div>

					<div class="widget widget_about">
						<div class="widget_title">
							<h4>
								<span>Basic Text Widget</span>
							</h4>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adip, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat.</p>
					</div>

					<div class="widget widget_tab">
						<div class="velocity-tab sidebar-tab">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#Popular" data-toggle="tab">Popular</a></li>
								<li class=""><a href="#Recent" data-toggle="tab">Recent</a></li>
								<li class="last-tab"><a href="#Comment" data-toggle="tab"><i
										class="fa fa-comments-o"></i></a></li>
							</ul>

							<div class="tab-content clearfix">
								<div class="tab-pane fade active in" id="Popular">
									<ul class="recent_tab_list">
										<li><span><a href="#"><img
													src="/kobook/images/content/recent_1.png" alt="" /></a></span> <a
											href="#">Publishing packag esanse web page editos</a> <i>October
												09, 2015</i></li>
										<li><span><a href="#"><img
													src="/kobook/images/content/recent_2.png" alt="" /></a></span> <a
											href="#">Sublishing packag esanse web page editos</a> <i>October
												08, 2015</i></li>
										<li class="last-tab"><span><a href="#"><img
													src="/kobook/images/content/recent_3.png" alt="" /></a></span> <a
											href="#">Mublishing packag esanse web page editos</a> <i>October
												07, 2015</i></li>
									</ul>
								</div>
								<div class="tab-pane fade" id="Recent">
									<ul class="recent_tab_list">
										<li><span><a href="#"><img
													src="/kobook/images/content/recent_4.png" alt="" /></a></span> <a
											href="#">Various versions has evolved over the years</a> <i>October
												18, 2015</i></li>
										<li><span><a href="#"><img
													src="/kobook/images/content/recent_5.png" alt="" /></a></span> <a
											href="#">Rarious versions has evolve over the years</a> <i>October
												17, 2015</i></li>
										<li class="last-tab"><span><a href="#"><img
													src="/kobook/images/content/recent_6.png" alt="" /></a></span> <a
											href="#">Marious versions has evolven over the years</a> <i>October
												16, 2015</i></li>
									</ul>
								</div>
								<div class="tab-pane fade" id="Comment">
									<ul class="comments">
										<li class="comments_list clearfix"><a
											class="post-thumbnail" href="#"><img width="60"
												height="60" src="/kobook/images/content/recent_3.png"
												alt="#"></a>
											<p>
												<strong><a href="#">Prambose</a> <i>says: </i> </strong>
												Morbi augue velit, tempus mattis dignissim nec, porta sed
												risus. Donec eget magna eu lorem tristique pellentesque eget
												eu dui. Fusce lacinia tempor malesuada.
											</p></li>
										<li class="comments_list clearfix"><a
											class="post-thumbnail" href="#"><img width="60"
												height="60" src="/kobook/images/content/recent_1.png"
												alt="#"></a>
											<p>
												<strong><a href="#">Makaroni</a> <i>says: </i> </strong>
												Tempus mattis dignissim nec, porta sed risus. Donec eget
												magna eu lorem tristique pellentesque eget eu dui. Fusce
												lacinia tempor malesuada.
											</p></li>
										<li class="comments_list clearfix"><a
											class="post-thumbnail" href="#"><img width="60"
												height="60" src="/kobook/images/content/recent_2.png"
												alt="#"></a>
											<p>
												<strong><a href="#">Prambanan</a> <i>says: </i> </strong>
												Donec convallis, metus nec tempus aliquet, nunc metus
												adipiscing leo, a lobortis nisi dui ut odio. Nullam
												ultrices, eros accumsan vulputate faucibus, turpis tortor.
											</p></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="widget widget_tag">
						<div class="widget_title">
							<h4>
								<span>Tags Widget</span>
							</h4>
						</div>
						<ul class="tags">
							<li><a href="#"><b>business</b></a></li>
							<li><a href="#">corporate</a></li>
							<li><a href="#">css3</a></li>
							<li><a href="#"><b>html5</b></a></li>
							<li><a href="#">javascript</a></li>
							<li><a href="#"><b>jquery</b></a></li>
							<li><a href="#">multipurpose</a></li>
							<li><a href="#"><b>mysql</b></a></li>
							<li><a href="#">portfolio</a></li>
							<li><a href="#">premium</a></li>
							<li><a href="#">responsive</a></li>
							<li><a href="#"><b>theme</b></a></li>
							<li><a href="#"><b>jQuery Rain</b></a></li>
						</ul>
					</div>

					<div class="widget widget_archives">
						<div class="widget_title">
							<h4>
								<span>Archives</span>
							</h4>
						</div>
						<ul class="archives_list list_style">
							<li><a href="#"> November 2015</a></li>
							<li><a href="#"> October 2015</a></li>
							<li><a href="#"> September 2015</a></li>
							<li><a href="#"> August 2015</a></li>
							<li><a href="#"> July 2015</a></li>
							<li><a href="#"> June 2015</a></li>
							<li><a href="#"> May 2015</a></li>
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
						&copy; Copyright 2015 Electrify | Powered by <a
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

	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery-1.10.2.min.js"></script>
	<script src="/kobook/js/bootstrap.min.js"></script>
	<script src="/kobook/js/jquery.easing.1.3.js"></script>
	<script src="/kobook/js/retina-1.1.0.min.js"></script>
	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="/kobook/text/javascript" src="/kobook/js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery.smartmenus.min.js"></script>
	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="/kobook/text/javascript" src="/kobook/js/jflickrfeed.js"></script>
	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery.magnific-popup.min.js"></script>
	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery.isotope.min.js"></script>
	<script type="/kobook/text/javascript" src="/kobook/js/swipe.js"></script>
	<script type="/kobook/text/javascript"
		src="/kobook/js/jquery-scrolltofixed-min.js"></script>

	<script src="/kobook/js/main.js"></script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>
