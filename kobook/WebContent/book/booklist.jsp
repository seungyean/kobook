<%-- <%@page import="kobook.book.dao.BookDAO"%> --%>
<%@page import="kobook.book.domain.BookSearch"%>
<%@page import="kobook.book.domain.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>





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
								<a href="index.html"><img alt="logo" src="/kobook/images/logo.png" /></a>
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
											<li class="active"><a href="#">Portfolio Classic</a>
												<ul class="dropdown-menu">
													<li><a href="portfolio_2.html">Portfolio 2</a></li>
													<li><a href="portfolio_3.html">Portfolio 3</a></li>
													<li class="active"><a href="portfolio_4.html">Portfolio
															4</a></li>
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

											<li><a href="portfolio_single.html">Portfolio Single</a>
												<ul class="dropdown-menu">
													<li><a href="portfolio_single.html">Portfolio
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

									<li><a href="#"> <span class="data-hover"
											data-hover="contact">Contact</span></a>
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
							<h2>도서목록[전공에따른 분류]</h2>
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

	
		<section class="content portfolio small-images">
		<form action="/kobook/book/insertform.do" method="post">
			<div class="container">
				<div class="row">
					<!--begin isotope -->
					<div class="isotope col-lg-12">
						<!--begin portfolio filter -->
						<ul id="filter" class="option-set clearfix">
							<!-- <li data-filter="*" class="selected"><a href="#">All</a></li> -->
							<li data-filter="*" class="selected"><a href="#">All</a></li>
							<li data-filter=".Business"><a href="#">Business</a></li>
							<li data-filter=".Economy"><a href="#">Economy</a></li>
							<li data-filter=".Computer"><a href="#">Computer</a></li>
							<li data-filter=".Deutsch"><a href="#">Deutsch</a></li>
							<li data-filter=".Law"><a href="#">Law</a></li>
							<li data-filter=".History"><a href="#">History</a></li>
							<li data-filter=".Physics"><a href="#">Physics</a></li>
							
							
							<li data-sort-by="name"><a href="#">name</a></li>
						</ul>
						
						<!--begin portfolio_list -->   
				<ul id="list" class="portfolio_list clearfix ">		
						 
						  <!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="Business" />
							 <c:if test="${b.book_kind=='Business'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 Business">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" alt="aa" height="280" />
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
													<span>${b.book_m_price}원</span>
													
													 <c:choose>
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													
													
											<!-- 	 <span>Business</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						
						
						<!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="Economy" />
							 <c:if test="${b.book_kind=='Economy'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 Economy">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" alt="aa" height="280"/>
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
													<span>${b.book_m_price}원</span>
													
													 <c:choose>
													 
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													<!-- <span>Economy</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						
						<!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="Computer" />
							 <c:if test="${b.book_kind=='Computer'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 Computer">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" height="280" alt="aa"/>
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/bookdetailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
													<span>${b.book_m_price}원</span>
													 <c:choose>
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													<!-- <span>Computer</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						
						<!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="Deutsch" />
							 <c:if test="${b.book_kind=='Deutsch'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 Deutsch">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" height="280" alt="aa"/>
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
												<span>${b.book_m_price}원</span>
												 <c:choose>
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													<!-- <span>Deutsch</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						
						<!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="Law" />
							 <c:if test="${b.book_kind=='Law'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 Law">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" height="280" alt="aa"/>
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
													<span>${b.book_m_price}원</span>
													 <c:choose>
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													<!-- <span>Law</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						
						<!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="History" />
							 <c:if test="${b.book_kind=='History'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 History">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" height="280" alt="aa"/>
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
													<span>${b.book_m_price}원</span>
													 <c:choose>
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													<!-- <span>History</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						
						<!--begin List Item -->
							<c:forEach var="b" items="${listModel.list}">
							<c:set var="b.book_kind" value="Physics" />
							 <c:if test="${b.book_kind=='Physics'}">
								<li class="list_item col-lg-3 col-md-4 col-sm-6 Physics">
									<div class="recent-item box">
										<figure class="touching ">
										
										<img src="/kobook/upload/${b.book_img}" height="280"  alt="aa"/>
											<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
											<div class="option inner">
												<div>
													<h5>${b.book_name}</h5>
													<a href="/kobook/upload/${b.book_img}" class="fa fa-search mfp-image"></a> 
													<a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
												<span>${b.book_m_price}원</span>
												 <c:choose>
													<c:when test="${b.book_sell_state=='I'}">
													<span>판매중</span>
													</c:when>
													
													<c:when test="${b.book_sell_state=='C'}">
													<span>판매완료</span>
													</c:when>
													
													</c:choose>
													<!-- <span>Physics</span> -->
												</div>
											</div>
										</figure>
									</div>
								</li>
								</c:if>
								</c:forEach>
						<!--end List Item --> 
						</ul>
						<!--end portfolio_list -->	
					</div>
					<!--end isotope -->

	<input type="submit" value="글쓰기" />
	</form>
	

					<form method="post" id="site-searchform" action="/kobook/book/listAction.do">
					
						<div>
						 <input type="hidden" name="temp" value="temp">

							제목: <input type="checkbox" name="area" value="book_name" /> 
							해시태그포함 검색유무: <input type="checkbox" name="area" value="book_hash" /> 
							안심거래사용: <input type="checkbox" name="safe_yn" value="book_safe_yn" />
							<!-- 지역명검색: <input type="checkbox" name="location" value="book_location" />  -->
							<input type="text" class="input-text" name="searchKey" id="s" placeholder="책제목 을 입력하세요" />
							<input type="submit" id="searchsubmit" value="search" />
							
							가격순 <input type="radio" name="sort" value="book_m_price"/>			
							상태순 <input type="radio" name="sort" value="book_status"/>		
							
					<!-- 	<br><br>
                 		 범위 : <input type = "range" min = "0" max = "10000" step = "10" name = "range">                   		  
            		<br><br> -->
         		  
						</div>
					</form>
					
			<!-- 		 <form method="post" id="sorting" action="listAction.do">
					
						<div>
						 <input type="hidden" name="temp" value="temp">

						<input type="button" name="price" value="가격순"/>
						<input type="button" name="name" value="가나다순"/>
							
						</div>
					</form> -->
					
					

					<div class="col-sm-12 text-center">
						<!-- <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul> -->
                        
                        
						<!-- 페이징 -->
						<!-- 이전영역 생성(start page) -->
						<c:if test="${listModel.startPage > 5 }">
							<a href="/kobook/book/listAction.do?pageNum=${listModel.startPage -1}">[이전]</a>
						</c:if>

						<!-- 페이지 목록 -->
						<c:forEach var="pageNo" begin="${listModel.startPage}"
							end="${listModel.endPage}">
							<c:if test="${listModel.requestPage == pageNo }">
								<b>
							</c:if>
							<a href="/kobook/book/listAction.do?pageNum=${pageNo}">[ ${pageNo} ]</a>
							<c:if test="${listModel.requestPage == pageNo }">
								</b>
							</c:if>
						</c:forEach>

						<!-- 이후영역 생성(end) -->
						<c:if test="${listModel.endPage < listModel.totalPageCount}">
							<a href="/kobook/book/listAction.do?pageNum=${listModel.endPage +1}">[이후]</a>
						</c:if>
						<br>

					</div> <!--text container -->
				
				</div> <!--./row-->
			</div> <!--./container-->
		</section>
		<!--end small images  -->


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
	<script type="text/javascript" src="/kobook/js/jflickrfeed.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="/kobook/js/swipe.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery-scrolltofixed-min.js"></script>
	<script type="text/javascript" src="/kobook/js/jquery-hoverdirection.min.js"></script>

	<script src="/kobook/js/main.js"></script>
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>