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
								<!-- 글 이미지(있을 시) -->
								<figure class="post_img">
									<img src="../upload/${donate.donate_img }" alt="NO IMAGE"
										height="500" width="600">
								</figure>
								<!-- 글 번호 -->
								<div class="post_date">
									<span class="day">${donate.donate_id }</span>
								</div>
								<div class="post_content">
									<div class="post_meta">
										<!-- 글 제목 -->
										<h2>${donate.donate_title }</h2>
										<div class="metaInfo">

											<!-- 글 작성일,작성자(person_id),조회수,수정/삭제폼 -->
											<span><i class="fa fa-calendar"></i> <fmt:formatDate
													value="${donate.donate_date }" pattern="MMM dd, yyyy" /> </span>
											<span><i class="fa fa-user"></i> By ${donate.person_id}
											</span> <span><i class="fa fa-eye"></i> ${donate.donate_hit}
											</span>
											<!-- <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span> -->
										</div>
									</div>
									<!-- 글 내용 -->
									<blockquote class="default">
										${donate.donate_content }</blockquote>
								</div>
							</article>
						</div>

						<!--update Comments-->
						<div class="news_comments">
							<div class="dividerHeading">
								<h4>
									<span>Comments</span>
								</h4>
							</div>
							<form action="donateReplyUpdateAction.do" method="post">
								<input type="hidden" name="reply_id" value="${reply_id}">
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
													</div>
													<c:if test="${reply_id != null }">
														<div class="comment-body">
															<c:choose>
																<c:when test="${reply.reply_id == reply_id }">
																	<textarea cols="30" rows="3" name="reply_content"
																		placeholder="${reply.reply_content}">${reply.reply_content}</textarea>
																	<input type="hidden" name="donate_id"
																		value="${reply.donate_id}">
																	<input type="submit" class="btn btn-lg btn-default"
																		value="수정완료">
																</c:when>
																<c:otherwise>
																	<p>${reply.reply_content}</p>
																</c:otherwise>
															</c:choose>
														</div>
													</c:if>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
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