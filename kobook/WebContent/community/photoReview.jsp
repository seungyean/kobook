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
<title>Kobook/photoReview</title>
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
							<h2>포토 리뷰 게시판</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">홈</a>/</li>
								<li>커뮤니티 /</li>
								<li>포토리뷰</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!-- 여기서부터 -->
		<section class="content portfolio medium-images">
			<div class="container">
				<div class="row sub_content">
					<!--begin isotope -->
							<form action="photoInsertForm.do" method="post">
					<div class="col-lg-12 isotope">
					
                    <!--begin portfolio filter -->
<!--                     <ul id="filter">
                        <li data-filter="*" class="selected"><a href="#">All</a></li>
                        <li data-filter=".responsive"><a href="#">Responsive</a></li>
                        <li data-filter=".mobile"><a href="#">Mobile</a></li>
                        <li data-filter=".branding"><a href="#">Branding</a></li>
                    </ul> -->
                    <!--end portfolio filter -->
						<!--begin portfolio_masonry -->
						<div class="mixed-container masonry_wrapper">
							<c:forEach var="photo" items="${photoListModel.list}">
							<div class="item responsive">
								<div class="recent-item box">
									<figure class="touching ">
											<a href="photoDetail.do?photo_id=${photo.photo_id }">
										<img src="../upload/${photo.photo_img }"
											alt="NO IMAGE" class="img-responsive" /></a>
										<div class="option inner">
											<div>
												<h5>${photo.photo_title }</h5>
												<a href="../upload/${photo.photo_img }"
													class="fa fa-search mfp-image"></a> <a
													href="photoDetail.do?photo_id=${photo.photo_id}" class="fa fa-link"></a>
													<span>${photo.person_id }</span>
											</div>
										</div>
									</figure>
								</div>
							</div>
							</c:forEach>
						</div>
							<input type="submit" value="글쓰기" class="btn-default">
						<!--end portfolio_masonry -->
					</div>
							</form>
					<div align="right">
						<form action="photoReviewList.do" method="post">
							<input type="hidden" name="temp" value="temp"> <input
								type="checkbox" name="area" value="photo_title">제목 <input
								type="checkbox" name="area" value="photo_content">내용 <input
								type="checkbox" name="area" value="person_id">작성자 <input
								type="text" name="searchKey"
								placeholder="Enter Search keywords..." size="25"> <input
								type="submit" class="btn-default" value="검색">
						</form>
					</div>
					<div class="col-sm-12 text-center">
						<ul class="pagination">
							<li><a href="photoReviewList.do?pageNum=1">&#x27EA;</a></li>
							<li class="active"><c:if
									test="${photoListModel.startPage > 3 }">
									<a
										href="photoReviewList.do?pageNum=${photoListModel.startPage -1}">
										&lang; </a>
								</c:if></li>
							<c:forEach var="pageNo" begin="${photoListModel.startPage}"
								end="${photoListModel.endPage}">
								<li><c:if test="${photoListModel.requestPage == pageNo }">

									</c:if> <a href="photoReviewList.do?pageNum=${pageNo}">${pageNo}</a> <c:if
										test="${photoListModel.requestPage == pageNo }">

									</c:if></li>
							</c:forEach>
							<li><c:if
									test="${photoListModel.endPage < photoListModel.totalPageCount}">
									<a
										href="photoReviewList.do?pageNum=${photoListModel.endPage +1}">
										&rang; </a>

								</c:if></li>
							<li><a
								href="photoReviewList.do?pageNum=${photoListModel.totalPageCount}">
									&#x27EB; </a></li>
						</ul>
					</div>
				</div>
				<!--./row-->
			</div>
			<!--./div-->
		</section>
		<!-- 여기까지 -->
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
	<script>
    (function ($) {
        var $container = $('.masonry_wrapper'),
                colWidth = function () {
                    var w = $container.width(),
                            columnNum = 1,
                            columnWidth = 0;
                    if (w > 1200) {
                        columnNum  = 3;
                    } else if (w > 900) {
                        columnNum  = 3;
                    } else if (w > 600) {
                        columnNum  = 2;
                    } else if (w > 300) {
                        columnNum  = 1;
                    }
                    columnWidth = Math.floor(w/columnNum);
                    $container.find('.item').each(function() {
                        var $item = $(this),
                                multiplier_w = $item.attr('class').match(/item-w(\d)/),
                                multiplier_h = $item.attr('class').match(/item-h(\d)/),
                                width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
                                height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
                        $item.css({
                            width: width,
                            height: height
                        });
                    });
                    return columnWidth;
                }

        function refreshWaypoints() {
            setTimeout(function() {
            }, 1000);
        }
        function setPortfolio() {
            setColumns();
            $container.isotope('reLayout');
        }

        isotope = function () {
            $container.isotope({
                resizable: true,
                itemSelector: '.item',
                masonry: {
                    columnWidth: colWidth(),
                    gutterWidth: 0
                }
            });
        };
        isotope();
        $(window).smartresize(isotope);
    }(jQuery));
</script>
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>