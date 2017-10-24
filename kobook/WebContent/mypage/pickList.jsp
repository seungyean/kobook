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
	<title>찜리스트</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

     <!-- CSS FILES -->
    <link rel="stylesheet" href="/kobook2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook2/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook2/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook2/css/layout/wide.css" data-name="layout">
    <link rel="stylesheet" type="text/css" href="/kobook2/css/switcher.css" media="screen" />
    <script type="text/javascript" src="/kobook2/js/jquery-1.10.2.min.js"></script>
    
    <script type="text/javascript">
    

    $(function(){
    	
    	// 결제창 모달 
    	 $(".btn-default").click(function(){
             $('#payModal').modal();
         });
    	 
    	// 찜 삭제 버튼 
    	 $(".btn-danger").click(function(){
    		var pick_id = $(this).parent().parent().find('td:first').text().trim();
    		 
            location.href="/kobook2/main/mypage/pickDelete.do?pick_id=" + pick_id;
         });
    
    
    
    });
    
    
    </script>
    
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
                            <h2>찜</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">홈</a>/</li>
                                <li>마이페이지 /</li>
                                <li>찜</li>
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
							<h4><span>찜 리스트</span></h4>
							<br>
							<br>
							<c:choose>
									<c:when test="${empty pickList }">
										<div class="media-body">
											<div class="well" style="margin-left: 170px;">
												<h2 align="center">찜 상품이 존재하지 않습니다.</h2>
											</div>
										</div>
									</c:when>
									<c:otherwise>
								<form>
									<table class="table table-hover">
										<thead>
											<tr>
												<td align="center">No</td>
												<td align="center">썸네일</td>
												<td>책 제목</td>
												<td align="center">판매자</td>
												<td align="center">가격</td>
												<td align="center">판매상태</td>
												
												<td></td>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="element" items="${pickList }" varStatus="s">
												<tr>
													<td align="center">	${element.PICK_ID} </td>
													<td align="center">	${element.BOOK_IMG }</td>
													<td>${element.BOOK_NAME }</td>
													<td align="center">${element.PERSON_NAME }</td>
													<td align="center">${element.BOOK_M_PRICE }</td>
													<td align="center">
													<c:set var="name" value="${element.BOOK_SELL_STATE}" />
														<c:choose>
   															<c:when test="${element.BOOK_SELL_STATE eq 'I' }">
      														    판매중
   															</c:when>
   															<c:when test="${element.BOOK_SELL_STATE eq 'C' }">
     														   판매완료
  															</c:when>
  														</c:choose>
													</td>
													<td>_
													<input type="button" value="삭제" class="btn-danger" id="del" >
													<input type="button" value="결제" class="btn-default" id="popPay">
													</td>
												</tr>
											</c:forEach>
										</tbody>
										</table>
									</form>
									</c:otherwise>
								</c:choose>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- 모달 -->
	<div class="modal fade" id="payModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">취소</span>
					</button>
					<h3 class="modal-title" id="lineModalLabel">결제창</h3>
				</div>
				<div class="modal-body">
					<!-- content goes here -->
					<form>
						<div class="form-group">
							<label>결제상품 : </label> 
						</div>
						<div class="form-group">
							<label>결제금액 : </label> 
						</div>
						<div class="form-group">
							<label>마일리지 : 1000원</label> 
						</div>
						<div class="form-group">
							<label>사용 마일리지 :</label> <input type="text" class="form-control" >
						</div>
						<div class="form-group">
							<h3>총 결제 금액: </h3>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default" data-dismiss="modal" role="button">취소</button>
						</div>
						<div class="btn-group btn-delete hidden" role="group">
							<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal" role="button">취소</button>
						</div>
						<div class="btn-group" role="group">
							<button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">결제</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
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

      <script type="text/javascript" src="/kobook2/js/jquery-1.10.2.min.js"></script>
    <script src="/kobook2/js/bootstrap.min.js"></script>
    <script src="/kobook2/js/jquery.easing.1.3.js"></script>
    <script src="/kobook2/js/retina-1.1.0.min.js"></script>
    <script type="text/javascript" src="/kobook2/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script type="text/javascript" src="/kobook2/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
    <script type="text/javascript" src="/kobook2/js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="/kobook2/js/jquery.smartmenus.bootstrap.min.js"></script>
        <script type="text/javascript" src="/kobook2/js/jflickrfeed.js"></script>
    <script type="text/javascript" src="/kobook2/js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/kobook2/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/kobook2/js/swipe.js"></script>
    <script type="text/javascript" src="/kobook2/js/jquery-scrolltofixed-min.js"></script>

    <script src="/kobook2/js/main.js"></script>

    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>