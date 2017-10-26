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
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">
    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />
    <script type="text/javascript" src="/kobook/js/jquery-1.10.2.min.js"></script>
    
    <script type="text/javascript">
    

    $(function(){
    	
    	var sum_mileage = ${sumMileage};
    	var pick_id = "";
    	var book_name = "";
    	var book_m_price = "";
    	var pay_amount = "";
    	var total_pick_id = "";
    	
    	$("#pay_success").click(function() {
    		pay_amount = $('#total_price').val();
    		var pick_id = $('#pick_id').val();
            location.href="/kobook/mypage/paySuccess.do?pay_amount="+ pay_amount + "&pick_id="+pick_id;
		});
    	
    	// 결제창 모달 
    	 $(".btn-default").click(function(){
     		pick_id = $(this).parent().parent().find('td:first').text().trim();
     		
     		$('#pick_id').val(pick_id);
     		//total_pick_id = pick_id;
     		//alert(total_pick_id);
     		
     		book_name = $(this).parent().parent().find('td:eq(2)').text().trim();
     		$('#book_name').val(book_name);
     		
    		book_m_price = $(this).parent().parent().find('td:eq(4)').text().trim();
    		$('#book_m_price').val(book_m_price);
    		
    		$('#sum_mileage').val(sum_mileage);
            $('#payModal').modal();
         });
    	 
    	// 찜 삭제 버튼 
    	 $(".btn-danger").click(function(){
    		var pick_id = $(this).parent().parent().find('td:first').text().trim();
            location.href="/kobook/mypage/pickUpdate.do?pick_id=" + pick_id;
         });
    	
    	$("#use_mileage").keyup(function() {
    		var use_mileage = $('#use_mileage').val();
    		$('#total_price').val(book_m_price - use_mileage);
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
							<label>- 결제상품  </label>
							<input type="text" name="text" size="20" style="width:100%; border: 0;" id="book_name"> 
						</div>
						<div class="form-group">
							<label >- 결제금액  </label> 
							<input type="text" name="text" size="20" style="width:100%; border: 0;" id="book_m_price"> 
						</div>
						<div class="form-group">
							<label >- 마일리지  </label> 
							<input type="text" name="text" size="20" style="width:100%; border: 0;" id="sum_mileage"> 
						</div>
						<div class="form-group">
							<label>- 사용 마일리지 </label>
							<input type="text" name="text" size="20" style="width:100%; border: 0;" id="use_mileage"class="form-control" placeholder="사용할 적립금액을 입력하세요"> 
						</div>
						<div class="form-group">
							<h3>- 총 결제 금액 </h3>
							<input type="text" name="text" size="20" style="width:100%; border: 0;" id="total_price"  class="form-control"> 
							<input type="hidden" name="text" id="pick_id" class="form-control"> 
							
						</div>
					</form>
				</div>
				<div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">취소</button>
				</div>
				<div class="btn-group btn-delete hidden" role="group">
					<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">취소</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" id="pay_success" class="btn btn-default btn-hover-green" data-action="save" role="button">결제</button>
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