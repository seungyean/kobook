<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>판매후기 모아보기</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- CSS FILES -->
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" />

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
                            <h2>판매후기 모아보기</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">홈</a>/</li>
                                <li>판매후기</li>
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
							<h4><span>판매후기</span></h4>
							<br>
							<br>

							<div class="container">
            <div class="row" >
                <div class="col-md-8">
                  <div class="page-header">
                    <h1><small class="pull-right">후기: 45</small> 판매후기 </h1>
                  </div> 
                   
                   <div class="comments-list">
                       <div class="media">
                           <p class="pull-right"><small>5일 전</small></p>
                            <div class="media-body">
                              <h4 class="media-heading user_name">이승연</h4>
                              Wow! this is really great.
															<div class="row lead">
																<div id="stars" class="starrr"></div>
																	<span id="count">4</span> star(s)
															</div>
														</div>
                          </div>
                          
                        <div class="media">
                           <p class="pull-right"><small>5일 전</small></p>
                            <div class="media-body">
                              <h4 class="media-heading user_name">정아름</h4>
                              Wow! this is really great.
                              <p><small><a href="">Like</a> - <a href="">Share</a></small></p>
                            </div>
                          </div>
                       
                        <div class="media">
                           <p class="pull-right"><small>5일 전</small></p>
                            <div class="media-body">
                              <h4 class="media-heading user_name">조지호</h4>
                              Wow! this is really great.
                              <p><small><a href="">Like</a> - <a href="">Share</a></small></p>
                            </div>
                          </div>
                   </div>
                    
                    
                    
                </div>
            </div>
        </div>

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
	
	

    <script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/retina-1.1.0.min.js"></script>
    <script type="text/javascript" src="../js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script type="text/javascript" src="../js/styleswitch.js"></script> <!-- Style Colors Switcher -->
    <script type="text/javascript" src="../js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="../js/jquery.smartmenus.bootstrap.min.js"></script>
        <script type="text/javascript" src="../js/jflickrfeed.js"></script>
    <script type="text/javascript" src="../js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="../js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="../js/swipe.js"></script>
    <script type="text/javascript" src="../js/jquery-scrolltofixed-min.js"></script>

    <script src="../js/main.js"></script>

    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>