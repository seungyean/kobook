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