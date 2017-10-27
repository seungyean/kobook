<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


 <!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>도서검색[지역]</title>
	<meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />
</head>
<body>
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
                            <h2>지역검색</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="/kobook/index.html">홈</a>/</li>
                                <li>지역검색 /</li>
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
							<h4><span>지역검색 리스트</span></h4>
							<br>
							<br>
							<!--  여기서 부터 민주  -->
							
							<form action="/kobook/book/locationAction.do" method="post" style=" margin-left: 770px">
								<div>
									<input type="hidden" name="temp" value="temp" >
									<input type="hidden" name="check" value="-1"> 
									<input type="text" class="input-text" name="searchKey" id="s" placeholder="지역을 입력하세요" /> 
									<input type="submit" id="searchsubmit" value="search" class="btn-default"/> 
									가격순 <input type="radio" name="sort" value="book_m_price" /> 
									상태순 <input type="radio" name="sort" value="book_status" />
								</div>
							</form>
							<br>
							<br>
							
							
							<c:choose>
				<c:when test="${check<0}">
				
				<table class="table table-hover">
                        <thead>
                        <tr>
                            <th>글번호</th>
                            <th>책제목</th>
                            <th>책상태</th>
                            <th>판매상태</th>
                            <th>책가격</th>
                            <th>안심유무</th>
                            <th>날짜</th>
                        </tr>
                        </thead>
				      <c:forEach var="b" items="${listModel.list}">
				<tr>
				<td>${b.book_id}</td>
				<td><a href="/kobook/book/detailAction.do?book_id=${b.book_id}">${b.book_name}</a></td>
				
				<td>
				<c:if test="${b.book_status !=null}">
				<c:choose>
				<c:when test="${b.book_status=='A'}">
				양호
				</c:when>
				<c:when test="${b.book_status=='C'}">
				나쁨
				</c:when>
				<c:otherwise>
				보통
				</c:otherwise>
				</c:choose>
				</c:if>
				</td>
				
				
				<td>
				<c:if test="${b.book_sell_state !=null}">
				<c:choose>
				<c:when test="${b.book_sell_state=='I'}">
				판매중
				</c:when>
				<c:when test="${b.book_sell_state=='C'}">
				판매완료
				</c:when>
				</c:choose>
				</c:if>
				</td>
				
				
				<td>${b.book_m_price}</td>
				<td>${b.book_safe_yn}</td>
				<td><fmt:formatDate value="${b.book_date}"
						pattern='yyyy-MM-dd' /></td>
			
			</tr>
			
		</c:forEach> 
                    </table>
                    
                    
                    <!-- 페이징 -->
                    <div class="col-sm-12 text-center">
                    	<ul  class="pagination">
						<!-- 이전영역 생성(start page) -->
						<c:if test="${listModel.startPage > 5 }">
							<li><a href="/kobook/book/locationAction.do?pageNum=${listModel.startPage -1}&check=1">이전</a></li>
						</c:if>
			
						<!-- 페이지 목록 -->
						<c:forEach var="pageNo" begin="${listModel.startPage}"
							end="${listModel.endPage}">
							<c:if test="${listModel.requestPage == pageNo }">
							</c:if>
							<li><a href="/kobook/book/locationAction.do?pageNum=${pageNo}&check=1" class="pagination"> ${pageNo}</a></li>
							<c:if test="${listModel.requestPage == pageNo }">
							</c:if>
						</c:forEach>

						<!-- 이후영역 생성(end) -->
						<c:if test="${listModel.endPage < listModel.totalPageCount}">
							<li><a href="/kobook/book/locationAction.do?pageNum=${listModel.endPage +1}&check=1">이후</a></li>
						</c:if>
						</ul>
						</div>
				</c:when>
				
				
				<c:otherwise>
				<table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>글번호</th>
                            <th>책제목</th>
                            <th>책상태</th>
                            <th>판매상태</th>
                            <th>책가격</th>
                            <th>안심유무</th>
                            <th>날짜</th>
                        </tr>
                        </thead>
				      <c:forEach var="b" items="${listModel2.list}">
				<tr>
				<td>${b.book_id}</td>
				<td><a href="/kobook/book/detailAction.do?book_id=${b.book_id}">${b.book_name}</a></td>
				
				<td>
				<c:if test="${b.book_status !=null}">
				<c:choose>
				<c:when test="${b.book_status=='A'}">
				양호
				</c:when>
				<c:when test="${b.book_status=='C'}">
				나쁨
				</c:when>
				<c:otherwise>
				보통
				</c:otherwise>
				</c:choose>
				</c:if>
				</td>
				
				
				<td>
				<c:if test="${b.book_sell_state !=null}">
				<c:choose>
				<c:when test="${b.book_sell_state=='I'}">
				판매중
				</c:when>
				<c:when test="${b.book_sell_state=='C'}">
				판매완료
				</c:when>
				</c:choose>
				</c:if>
				</td>
				
				
				<td>${b.book_m_price}</td>
				<td>${b.book_safe_yn}</td>
				<td><fmt:formatDate value="${b.book_date}"
						pattern='yyyy-MM-dd' /></td>
			
			</tr>
			
		</c:forEach> 
                    </table>
                    
                    <div class="col-sm-12 text-center">
                        <ul class="pagination">
                    			<!-- 페이징 -->
						<!-- 이전영역 생성(start page) -->
						<c:if test="${listModel2.startPage > 5 }">
						<li><a href="/kobook/book/locationAction.do?pageNum=${listModel2.startPage -1}&check=-1">이전</a></li>
						</c:if>

						<!-- 페이지 목록 -->
						<c:forEach var="pageNo" begin="${listModel2.startPage}"
							end="${listModel2.endPage}">
							<c:if test="${listModel2.requestPage == pageNo }">
							</c:if>
							<li><a href="/kobook/book/locationAction.do?pageNum=${pageNo}&check=-1"> ${pageNo}</a></li>
							<c:if test="${listModel2.requestPage == pageNo }">
							</c:if>
						</c:forEach>

						<!-- 이후영역 생성(end) -->
						<c:if test="${listModel2.endPage < listModel2.totalPageCount}">
							<li><a href="/kobook/book/locationAction.do?pageNum=${listModel2.endPage +1}&check=-1">이후</a></li>
						</c:if>
		
				</ul>
				</div>
				</c:otherwise>
				
				</c:choose>
							
							
							
							
								
						</div><!--  민주 끝  -->
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
    <script type="text/javascript" src="/kobook/js/jquery-hoverdirection.min.js"></script>

    <script src="/kobook/js/main.js"></script>
    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>