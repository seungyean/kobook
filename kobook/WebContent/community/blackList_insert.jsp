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
<title>Kobook/black</title>
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
							<h2>신고합니다 게시판</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="index.html">홈</a>/</li>
								<li>커뮤니티 /</li>
								<li>신고합니다</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-6 col-sm-6">
						<div class="dividerHeading">
							<h4>
								<span>신고합니다 글 작성</span>
							</h4>
						</div>
						<!-- 나중에 로그인되면 아래 person_id의 value는 sessionid로 변경 -->
						<form action="blackInsertAction.do" id="registerform"
							method="post" name="registerform" enctype="multipart/form-data">
							<div class="form-group">
								<input type="text" class="form-control" name="person_id"
									value="" placeholder="작성자 id">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="black_title"
									placeholder="글 제목">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="black_personid"
									placeholder="신고id">
							</div>
							<div class="form-group">
								<input type="file" class="form-control" name="black_img"
									placeholder="ImageFile">
							</div>
							<div class="form-group">
								<textarea rows="10" cols="73" class="form-control"
									name="black_content" placeholder="신고 내용 작성"></textarea>
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn-default btn-lg button"
									value="작성 완료">
							</div>
						</form>
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