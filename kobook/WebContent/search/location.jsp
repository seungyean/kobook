<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="../css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="../css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                            <h2>Portfolio 4 Columns</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">Home</a>/</li>
                                <li>Portfolio</li>
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
						<!--begin portfolio filter -->
						<ul id="filter" class="option-set clearfix">
							<li data-filter="*" class="selected"><a href="#">All</a></li>
							<li data-filter=".responsive"><a href="#">Responsive</a></li>
							<li data-filter=".mobile"><a href="#">Mobile</a></li>
							<li data-filter=".branding"><a href="#">Branding</a></li>
						</ul>
						<!--end portfolio filter -->
						
						<!--begin portfolio_list -->   
						<ul id="list" class="portfolio_list clearfix ">
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 branding">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_1.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Branding</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 mobile">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_2.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Mobile</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 responsive">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_3.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Responsive</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							 
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 branding">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_4.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Branding</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 mobile">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_5.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Mobile</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 branding">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_6.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_6.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Branding</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 responsive">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_7.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_7.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Responsive</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							 
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 mobile">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_8.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_8.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Mobile</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
							<!--end List Item -->
							
							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 branding">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_9.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Branding</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
                            <!--end List Item -->

							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 responsive">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_10.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Responsive</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
                            <!--end List Item -->

							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 mobile">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_11.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Mobile</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li>
                            <!--end List Item -->

							<!--begin List Item -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 responsive">
                                <div class="recent-item box">
                                  <figure class="touching ">
                                        <img src="images/portfolio/portfolio_12.png" alt=""/>
                                        <div class="option inner">
                                            <div>
                                                <h5>Touch and Swipe</h5>
                                                <a href="images/portfolio/full/portfolio_6.png" class="fa fa-search mfp-image"></a>
                                                <a href="portfolio_single.html" class="fa fa-link"></a>
                                                <span>Responsive</span>
                                            </div>
                                        </div>
                                    </figure>
                                </div>
							</li><!--end List Item -->
						</ul> <!--end portfolio_list -->
					</div>
					<!--end isotope -->
                    <div class="col-sm-12 text-center">
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
				</div> <!--./row-->
			</div> <!--./div-->
		</section>
	</section>
	<!--end wrapper-->

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

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/retina-1.1.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script type="text/javascript" src="js/styleswitch.js"></script> <!-- Style Colors Switcher -->
    <script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jflickrfeed.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/swipe.js"></script>
    <script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>
    <script type="text/javascript" src="js/jquery-hoverdirection.min.js"></script>

    <script src="js/main.js"></script>
    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>