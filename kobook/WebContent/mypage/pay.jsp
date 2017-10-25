<%@ page import="kobook.mypage.domain.*" %>
<%@ page import="kobook.mypage.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>결제</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

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
                            <h2>결제</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">홈</a>/</li>
                                <li>결제 /</li>
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
							<h4><span>결제</span></h4>
							<br>
							<br>

							<div class="col-lg-3 col-sm-3">
								<div class="dividerHeading">
									<h4>
										<span>배송지 정보</span>
									</h4>
								</div>
								<form id="registerform" method="post" name="registerform" action="">
									<div class="form-group">
										이름: <input type="text" class="form-control" placeholder="이름">
									</div>
									<div class="form-group">
										주소: <input type="text" class="form-control" placeholder="주소">
									</div>
									<div class="form-group">
										휴대전화: <input type="tel" class="form-control" placeholder="'-'을 제외한 번호만 입력해주세요.">
									</div>
									<div class="form-group">
										배송메시지: <input type="text" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										적립금: <input type="text" class="form-control" placeholder="Re-enter password">
									</div>
									<div class="form-group">
										결제금액: <input type="submit" class="btn btn-default btn-lg button" value="Register an account">
									</div>
								</form>
							</div>


							<table class="table table-hover">
										<thead>
											<tr>
												<td align="center">이미지</td>
												<td>책 제목</td>
												<td align="center">가격</td>
												<td align="center">결제번호</td>
												<td align="center">결제날짜</td>
												<td></td>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="element" items="${buyList }" varStatus="s">
												<tr>
													<td align="center">
													<c:if test="${board.b_fname != null }">
														<c:set var="head"
															value="${fn:substring(element.BOOK_IMG, 0, fn:length(element.BOOK_IMG)-4) }"></c:set>
														<c:set var="pattern"
															value="${fn:substring(element.BOOK_IMG, fn:length(head) +1, fn:length(element.BOOK_IMG)) }"></c:set>

														<c:choose>
															<c:when test="${pattern == 'jpg' || pattern == 'gif' }">
																<img src="../upload/${head }_small.${pattern}">
															</c:when>
															<c:otherwise>
																<c:out value="NO IMAGE"></c:out>
															</c:otherwise>
														</c:choose>
													</c:if> ${element.BOOK_IMG}</td>
													
													
													<td>${element.BOOK_NAME}</td>
													<td align="center">${element.BOOK_M_PRICE}</td>
													<td align="center">${element.PAY_ID}</td>
													<td align="center">${element.PAY_DATE}</td>
													<td><input type="button" value="후기작성" class="btn-default" src=""></td>
												</tr>
											</c:forEach>
										</tbody>
										</table>
									</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
        <section class="promo_box">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 col-md-9 col-lg-9">
                        <div class="promo_content">
                            <h3>Electrify is awesome responsive template, with clean design.</h3>
                            <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor. </p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <div class="pb_action">
                            <a class="btn btn-lg btn-default" href="#fakelink">
                                <i class="fa fa-shopping-cart"></i>
                                Download Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	</section><!--end wrapper-->

	<!-- 푸터 -->
 		 <jsp:include page="/include/footer.jsp" />
  	<!-- /푸터 -->
	
	<section class="footer_bottom">
		<div class="container">
			<div class="row">
            <div class="col-sm-6">
                <p class="copyright">&copy; Copyright 2015 Electrify | Powered by  <a href="http://www.jqueryrain.com/">jQuery Rain</a></p>
            </div>

            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social">
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
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