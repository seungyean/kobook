<%@page import="kobook.book.domain.BookSearch"%>
<%@page import="kobook.book.domain.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Electrify Responsive Multipurpose Template</title>
	<meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />
    <script type="text/javascript">
    	function goInsertForm(){
    		location.href="/kobook/book/insertform.do";
    	}
    </script>
</head>
<body>
<!--Start Header-->
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
                            <h2>도서목록</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">홈</a>/</li>
                                <li>전체검색</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

		<section class="content portfolio small-images">
			<div class="container">
				<div class="row">
					<!--begin isotope -->
					<div class="isotope col-lg-12">
						<!--검색 메뉴-->
						<ul id="filter" class="option-set clearfix">
							<li data-filter="*" class="selected"><a href="#">All</a></li>
							<li data-filter=".Business"><a href="#">Business</a></li>
							<li data-filter=".Economy"><a href="#">Economy</a></li>
							<li data-filter=".Computer"><a href="#">Computer</a></li>
							<li data-filter=".Deutsch"><a href="#">Deutsch</a></li>
							<li data-filter=".Law"><a href="#">Law</a></li>
							<li data-filter=".History"><a href="#">History</a></li>
							<li data-filter=".Physics"><a href="#">Physics</a></li>
						</ul>
						<!-- /검색 메뉴 -->
						
						<!--목록 -->   
						<ul id="list" class="portfolio_list clearfix ">
							<!-- 비지니스 Item -->
							<c:forEach var="b" items="${listModel.list}">
								<c:set var="b.book_kind" value="Business" />
								<c:if test="${b.book_kind=='Business'}">
									<li class="list_item col-lg-3 col-md-4 col-sm-6 Business">
										<div class="recent-item box">
											<figure class="touching ">

												<img src="/kobook/upload/${b.book_img}" alt="aa"
													height="280" />
												<a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
												<div class="option inner">
													<div>
														<h5>${b.book_name}</h5>
														<a href="/kobook/upload/${b.book_img}"
															class="fa fa-search mfp-image"></a> <a
															href="/kobook/book/detailAction.do?book_id=${b.book_id}"
															class="fa fa-link"></a> <span>${b.book_m_price}원</span>

														<c:choose>
															<c:when test="${b.book_sell_state=='I'}">
																<span>판매중</span>
															</c:when>

															<c:when test="${b.book_sell_state=='C'}">
																<span>판매완료</span>
															</c:when>
														</c:choose>
													</div>
												</div>
											</figure>
										</div>
									</li>
								</c:if>
							</c:forEach>
							<!-- /비지니스 -->
							
							<!-- 이코노미 Item -->
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
							<!-- /이코노미 -->
							
							<!-- 컴퓨터 Item -->
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
							<!-- /컴퓨터 -->
							
							<!-- 전공 Item -->
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
							<!-- /전공 -->
							
							<!-- 법 Item -->
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
							<!-- /법 -->
							
							<!-- Physics  Item -->
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
							<!-- /Physics -->
							
							<!-- 컴퓨터 Item -->
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
							<!-- /컴퓨터 -->
						</ul> <!-- /목록-->
					</div>
					<!--end isotope -->
					
					<!-- 페이지네이션 -->
                    <div class="col-sm-12 text-center">
                        <ul class="pagination">
                        <c:if test="${listModel.startPage > 5 }">
							<li><a href="/kobook/book/listAction.do?pageNum=${listModel.startPage -1}">[이전]</a></li>
						</c:if>

						<!-- 페이지 목록 -->
						<c:forEach var="pageNo" begin="${listModel.startPage}"
							end="${listModel.endPage}">
							<c:if test="${listModel.requestPage == pageNo }">
							</c:if>
							<li><a href="/kobook/book/listAction.do?pageNum=${pageNo}">[ ${pageNo} ]</a></li>
							<c:if test="${listModel.requestPage == pageNo }">
							</c:if>
						</c:forEach>

						<!-- 이후영역 생성(end) -->
						<c:if test="${listModel.endPage < listModel.totalPageCount}">
							<li><a href="/kobook/book/listAction.do?pageNum=${listModel.endPage +1}">[이후]</a></li>
						</c:if>
                        </ul>
                    </div> <!-- /페이지네이션 -->
                    
                    <input type="button" value="글쓰기" class="btn-default" style="width: 100px; height: 40px; margin-left: 800px" id="bookInsert" onclick="goInsertForm()"/>
				</div> <!--./row-->
			</div> <!--./div-->

			<div class="container">
				<div class="row">
					<div class="row">
  						<div class="col-md-6 col-md-offset-3">
  						
  						<form method="post" id="site-searchform" action="/kobook/book/listAction.do">
						<div>
						 <input type="hidden" name="temp" value="temp">
							제목: <input type="checkbox" name="area" value="book_name" /> 
							해시태그포함 검색유무: <input type="checkbox" name="area" value="book_hash" /> 
							안심거래사용: <input type="checkbox" name="safe_yn" value="book_safe_yn" />
							가격순 <input type="radio" name="sort" value="book_m_price"/>			
							상태순 <input type="radio" name="sort" value="book_status"/>	<br>	
							<input type="text" class="search-query form-control" name="searchKey" id="s" placeholder="책제목 을 입력하세요" />
							<input type="submit"  value="search" class="btn-default" style="width: 100px; height: 40px" />
						</div>
					</form>
  						</div>
					</div>
					
					
							
				</div>
			</div>


		</section>
	</section>
	<!--end wrapper-->

	<!-- 푸터 -->
 		 <jsp:include page="/include/footer.jsp" />
  	<!-- /푸터 -->
	

     <script type="text/javascript" src="/kobook/js/jquery-1.10.2.min.js"></script>
    <script src="/kobook/js/bootstrap.min.js"></script>
    <script src="/kobook/js/jquery.easing.1.3.js"></script>
    <script src="/kobook/js/retina-1.1.0.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script type="text/javascript" src="/kobook/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
    <script type="text/javascript" src="/kobook/js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.smartmenus.bootstrap.min.js"></script>
        <script type="text/javascript" src="/kobook/js/jflickrfeed.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/kobook/js/swipe.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery-scrolltofixed-min.js"></script>

    <script src="/kobook/js/main.js"></script>
    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>