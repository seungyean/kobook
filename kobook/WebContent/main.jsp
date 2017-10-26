<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int alarm_new=0;
%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>main</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="/kobook/css/fractionslider.css"/>
    <link rel="stylesheet" href="/kobook/css/style-fraction.css"/>
    <link rel="stylesheet" href="/kobook/css/animate.css"/>

    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />


	<script type="text/javascript">
	   function fn_login(){
			window.open("/kobook/login.jsp","","width=400,height=300,left=550,top=200");
		}
	   function fn_logout(){
			location.href="/kobook/logout.jsp";
		}
	</script>
</head>

<body class="home">
    <!-- 헤더 -->
 		 <jsp:include page="/include/header.jsp" />
  	<!-- /헤더 -->
    
    <section class="wrapper">
        <div class="slider-wrapper">
            <div class="slider">
                <div class="fs_loader"></div>
                <div class="slide">
                    <img src="/kobook/images/main_1.png" width="1920" height="auto" data-in="fade" data-out="fade" />

                    <!-- <img src="images/fraction-slider/slider-boy.png" width="600" height="600" data-position="30,1100" data-in="left" data-out="right" data-delay="700"/>

                    <p class="slide-1" data-position="50,610" data-in="fade" data-out="fade" data-delay="800">fully responsive</p>
                    <p class="slide-1" data-position="100,560" data-in="fade" data-out="fade" data-delay="1200">Our latest designs </p>
                    <p class="slide-1" data-position="150,500" data-in="fade" data-out="fade" data-delay="1600">Simply & Clear Design</p>

                    <p class="slide-1a" data-position="220,770" data-in="bottom" data-out="bottom" data-delay="2000" data-ease-in="easeOutBounce">SEO Friendly Website</p>
                    <p class="slide-1a" data-position="267,698" data-in="bottom" data-out="bottom" data-delay="3200"  data-ease-in="easeOutBounce">7 combination color option</p>
                    <p class="slide-1a" data-position="314,760" data-in="bottom" data-out="bottom" data-delay="4200"  data-ease-in="easeOutBounce">Animated layer slider</p>
                    <p class="slide-1a" data-position="361,753" data-in="bottom" data-out="bottom" data-delay="5200"  data-ease-in="easeOutBounce">Much More Featured...</p> -->
                </div>

                <div class="slide">
                    <img src="/kobook/images/a.png" width="1920" height="auto" data-in="fade" data-out="fade" />

                    <!-- <img src="images/fraction-slider/slider-girl.png" width="600" height="545" data-position="20,400" data-in="right" data-0ut="bottom" data-delay="500"/>

                    <p class="slide-2 " data-position="120,900" data-in="bottom" data-out="top" data-delay="2000">Your-Business</p>
                    <p class="slide-2a " data-position="210,900" data-in="left" data-out="right" data-delay="3000">A responsive multipurpose Theme</p>
                    <p class="slide-2b " data-position="270,900" data-in="top" data-out="bottom" data-delay="4000" data-ease-in="easeOutBounce">For Your Prestigious World !</p> -->
                </div>

                <div class="slide">
                    <img src="images/fraction-slider/base_3.jpg"  width="1920" height="auto" data-in="fade" data-out="fade" />

                    <!-- <p class="slide-heading" data-position="130,370" data-in="top" data-out="top" data-ease-in="easeOutBounce" data-delay="1500">Electrify theme</p>

                    <p class="sub-line" data-position="230,370" data-in="right" data-out="left" data-delay="2500">grid system and responsive design</p>

                    <img src="images/fraction-slider/gadgets/laptop.png" width="456" height="272" data-position="115,1180" data-in="bottom" data-out="bottom" data-delay="400">

                    <img src="images/fraction-slider/gadgets/mack.png" width="357" height="313" data-position="90,1040" data-in="top" data-out="bottom" data-delay="200">

                    <img src="images/fraction-slider/gadgets/ipad.png" width="120" height="170" data-position="230,1030" data-in="left" data-out="left" data-delay="300">

                    <img src="images/fraction-slider/gadgets/smartphone.png" width="70" height="140" data-position="270,1320" data-in="right" data-out="right" data-delay="300">

                    <a href=""	class="btn btn-lg btn-default" data-position="320,370" data-in="bottom"  data-out="bottom" data-delay="3700" data-ease-in="easeOutBounce">Free Download</a> -->
                </div>
            </div>
        </div>

		<br>
							
							<c:if test="${person_id == null }">
								<a href="#" onclick="fn_login()">로그인</a>
							</c:if>
							
							
							<c:if test="${person_id != null }">
								<a href="#" onclick="fn_logout()">로그아웃</a>
								
								<c:choose>
									<c:when test="${person_id == 0}">
										<h4>관리자 로그인</h4>
									</c:when>
									<c:otherwise>
										<h4>${person_id }님  환영합니다앙~^0^</h4>
            					  		<form action="/kobook/recom/alarmListAction.do">
            					  			<input type="hidden" name="person_id" value="${person_id }">
											<input type="submit" value="알림">
										</form>
									</c:otherwise>
								</c:choose>
        					</c:if>
        
        <h2>알림 리스트</h2>
        
        <h4>현재 사용자 : ${person_id}</h4>
 	    <c:forEach var="z" items="${alarmList }">
	    	<c:if test="${z.hit_yn == 'N' }">
	             <% alarm_new += 1;%>
	        </c:if> 
	    </c:forEach>
        <h4>새로운 알람의 갯수 : [ <%=alarm_new %> ]</h4>
        
        <table border="1">
			<tr>
				<td>알람아이디</td>
				<td>알림종류</td>
				<td>알림내용</td>
				<td>회원아이디</td>
				<td>조회여부</td>

			</tr>	
			<c:forEach var="a" items="${alarmList }">
			<tr>
				<td>${a.alarm_id }</td>
				<td>${a.alarm_kind }</td>
				<td>${a.alarm_content }</td>
				<td>${a.person_id }</td>
				<td>${a.hit_yn }</td>

			</tr>
			</c:forEach>
		</table>
		
		
		<br>
      <h2>추천도서</h2>
		<table border="1">
			<tr>
				<td>책이름</td>
				<td>책종류</td>
				<td>책ID</td>
				<td>분야ID</td>
				<td>분야이름</td>
				<td>회원ID</td>
				<td>회원전공여부</td>
			</tr>	
			<c:forEach var="f" items="${list }">
			<tr>
				<td>${f.book_name }</td>
				<td>${f.book_kind }</td>
				<td>${f.book_id }</td>
				<td>${f.favorite_id }</td>
				<td>${f.favorite_name }</td>
				<td>${f.person_id }</td>
				<td>${f.favorite_major }</td>

			</tr>
			</c:forEach>
		</table>
		
		
		
		<section class="super_sub_content">
            <div class="dividerHeading text-center">
            	<c:choose>
            		<c:when test="${person_id == 0}">
            			<h4><span>신규 등록 도서</span></h4>
            		</c:when>
            		<c:when test="${list == null}">
            			<h4><span>신규 등록 도서</span></h4>
            		</c:when>
            		<c:otherwise>
            			<h4>${person_id }님을 위한 추천도서</h4>
            		</c:otherwise>
            	</c:choose>
            </div>

            <nav class="clearfix">
                <ul id="filter">
                    <li data-filter="*" class="selected"><a href="#">전체보기</a></li>
                    <li data-filter=".mockups"><a href="#">전공</a></li>
                    <li data-filter=".graphic-design"><a href="#">기타</a></li>
                </ul>
            </nav>

            <div class="portfolio-centered">
                <div class="recentitems portfolio">
	                <c:forEach var="f" items="${list }">
	
		                <c:if test="${f.favorite_major == 'M' }">
			                	<div class="portfolio-item mockups">
			                        <div class="box">
			                            <img src="/kobook/images/${f.book_name }.png" alt="">
			                            <div class="option inner">
			                                <div>
			                                    <h5>전공 상세보기</h5>
			                                    <a href="/kobook/images/${f.book_name }.png" class="fa fa-search mfp-image"></a>
			                                    <a href="/kobook/search/book_detail.jsp" class="fa fa-link"></a>
			                                    <a href="/kobook/recom/recomDeleteAction.do?book_id=${f.book_id }&favorite_id=${f.favorite_id}&favorite_major=${f.favorite_major}&favorite_name=${f.favorite_name}" class="fa fa-times"></a>
			                                </div>
			                            </div>
			                        </div>
			                    </div>

		                </c:if>
		                
		                
		                <c:if test="${f.favorite_major == 'O' }">
						
						<input type="hidden" id="book_id" value="${f.book_id }">
						
		                	<div class="portfolio-item graphic-design">
		                        <div class="box">
		                            <img src="/kobook/images/${f.book_name }.png" alt="">
		                            <div class="option inner">
		                                <div>
		                                    <h5>기타 상세보기</h5>
		                                    <a href="/kobook/images/${f.book_name }.png" class="fa fa-search mfp-image"></a>
		                                    <a href="/kobook/search/book_detail.jsp" class="fa fa-link"></a>
		                                    <a href="/kobook/recom/recomDeleteAction.do?book_id=${f.book_id }&favorite_id=${f.favorite_id}&favorite_major=${f.favorite_major}&favorite_name=${f.favorite_name}" class="fa fa-times"></a>
		                                </div>
		                            </div>
		                        </div>
		                    </div>

		                </c:if>
	                	
	                </c:forEach>  
                



                    <!-- <div class="portfolio-item graphic-design">
                        <div class="box">
                            <img src="images/portfolio/portfolio_3.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Gray and Pink</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_4.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Amazing Keyboard Desin</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_5.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Our Favorite Colors</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_6.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Not War Make Design</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item graphic-design">
                        <div class="box">
                            <img src="images/portfolio/portfolio_7.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>A GREAT MOCK-UPS</h5>
                                    <a href="images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item graphic-design">
                        <div class="box">
                            <img src="images/portfolio/portfolio_8.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Missis Of 2014</h5>
                                    <a href="images/portfolio/full/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item graphic-design">
                        <div class="box">
                            <img src="images/portfolio/portfolio_9.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Light Carpet</h5>
                                    <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_10.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Business Card Mock-Up</h5>
                                    <a href="images/portfolio/full/portfolio_8.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div> -->

                </div><!-- portfolio -->
            </div><!-- portfolio container -->
        </section>
		
		
		
        <!-- <div class="container">
            <div class="row super_sub_content">
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 green">
                        <div class="service-icon">
                            <i class="fa fa-globe"></i>
                        </div>
                        <div class="service-content">
                            <h3>Web Development</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 purple">
                        <div class="service-icon">
                            <i class="fa fa-rocket"></i>
                        </div>
                        <div class="service-content">
                            <h3>Brand Building</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 red">
                        <div class="service-icon">
                            <i class="fa fa-user-md"></i>
                        </div>
                        <div class="service-content">
                            <h3>Responsive Design</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="serviceBox_2 blue">
                        <div class="service-icon">
                            <i class="fa fa-twitter"></i>
                        </div>
                        <div class="service-content">
                            <h3>Clean & Clear Design</h3>
                            <p> sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.</p>
                            <div class="read">
                                <a href="">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="grey_bg pdt-70">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 feature-block">
                        <img class="img-responsive center-block" src="images/laptop.png"/>
                    </div>

                    <div class="feature-block col-sm-7">
                        <h4>Clean, Professional <span>and Modern Design</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam earum enim est natus nulla odio perferendis totam. A eaque,  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio nesciunt. Autem cum distinctio eligendi impedit mollitia officia perferendis praesentium tempore veniam voluptas. Assumenda fuga laboriosam modi perspiciatis possimus rem suscipit. Adipisci, eos exercitationem molestiae nesciunt quaerat ullam veniam vitae voluptatum.
                        </p>
                        <a class="btn btn-default mrgb-20" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid grey-transparent-content">
            <div class="row">
                <div class="col-md-8 same-height sub_content clearfix">
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <div class="service-content">
                                <h3>Clean &amp; Minimal</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-diamond"></i>
                            </div>
                            <div class="service-content">
                                <h3>Branding Theme</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-anchor"></i>
                            </div>
                            <div class="service-content">
                                <h3>Modern Design</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-gears"></i>
                            </div>
                            <div class="service-content">
                                <h3>Quick Support</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a feugiat ligula, in efficitur ligula. Duis interdum velit orci, tempor facilisis magna. </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 same-height hidden-sm hidden-xs text-center retro">
                    <div class="heading-item">
                        <h4>
                            Ullam Corporis Suscipit </h4>
                        <p>
                            Nemo enim ipsam voluptatem quia voluptas sit aspernatur<br>
                            aut odit aut fugit, sed quia consequuntur
                        </p>
                        <a class="btn btn-default btn-lg" href="">Get a free Quote</a>
                        <em>or give us call
                            <strong>
                                +23-4321-12323
                            </strong>
                        </em>
                    </div>
                </div>
            </div>
        </div>

        <section class="feature-block">
            <div class="container">
                <div class="row super_sub_content">
                    <div class="col-lg-6 wow fadeInLeft">
                        <div class="text-center">
                            <img src="images/mobile-1.png" alt=""/>
                        </div>
                    </div>

                    <div class="col-lg-6 fadeInRight">
                        <h4>Responsive Designs</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae cum dolore fugit impedit nisi, quasi saepe temporibus velit! Debitis, nihil velit? A accusantium adipisci aliquam amet aperiam aut consequuntur dolore ducimus eaque eius est eveniet fugiat maxime molestias natus necessitatibus quae sapiente suscipit tenetur veniam vero, voluptate voluptatum! At, quia!</p>
                        <hr>
                        <i class="fa fa-apple"></i>
                        <i class="fa fa-windows"></i>
                        <i class="fa fa-clock-o"></i>
                        <i class="fa fa-android"></i>
                        <i class="fa fa-paperclip"></i>
                        <i class="fa fa-skype"></i>
                        <hr>
                        <a href="" class="btn btn-default btn-md">Read more</a>&nbsp;
                        <a href="" class="btn btn-default btn-md">Purchase Now</a>
                    </div>
                </div>
            </div>
        </section>
        <div class="grey_bg">
            <div class="container">
                <div class="row sub_content">
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="94">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">WebDesign</h5>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="87">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">Graphic Design</h5>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="77">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">Mobile Applications</h5>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 text-center">
                        <span class="circular-chart-big" data-percent="82">
                            <span class="percent"></span>
                        </span>
                        <h5 class="circular-title">Search Engine Optimization</h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="progress-bar-acc">
            <div class="container">
                <div class="row super_sub_content">
                    <div class="col-lg-6 ">
                        <ul class="progress-skill-bar mrg-0">
                            <li>
                                <span class="lable">70%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="70" class="bar" style="width: 0px; height: 0px;">
                                        HTML
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">80%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="80" class="bar" style="width: 0px; height: 0px;">
                                        CSS
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">90%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="90" class="bar" style="width: 0px; height: 0px;">
                                        JavaScript
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">80%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="80" class="bar" style="width: 0px; height: 0px;">
                                        MySQL
                                    </div>
                                </div>
                            </li>
                            <li>
                                <span class="lable">70%</span>
                                <div class="progress_skill">
                                    <div data-height="100" role="progressbar" data-value="70" class="bar" style="width: 0px; height: 0px;">
                                        PHP
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading button_outer_rounded" role="tab" id="heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse" aria-expanded="true" aria-controls="collapseOne">
                                            Stunning Design & Countless Options
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading button_outer_rounded" role="tab" id="heading1">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapseTwo">
                                            Tons of customization options
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading button_outer_rounded" role="tab" id="heading2">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapseThree">
                                            Ease of Content creation and modification
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="parallax parallax-1">
            <div class="container">
                <div class="row">
                    <div id="parallax-testimonial-carousel" class="parallax-testimonial carousel wow fadeInUp">
                        <div class="carousel-inner">
                            <div class="active item">
                                <div class="parallax-testimonial-item">
                                    <blockquote>
                                        <p>Donec convallis, metus nec tempus aliquet, nunc metus adipiscing leo, a lobortis nisi dui ut odio. Nullam ultrices, eros accumsan vulputate faucibus, turpis tortor dictum.</p>
                                    </blockquote>
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                    <div class="parallax-testimonial-review">
                                        <img src="images/testimonials/1.png" alt="testimonial">
                                        <span>Jonathan Dower</span>
                                        <small>Company Inc.</small>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="parallax-testimonial-item">
                                    <blockquote>
                                        <p>Metus aliquet tincidunt metus, sit amet mattis lectus sodales ac. Suspendisse rhoncus dictum eros, ut egestas eros luctus eget. Nam nibh sem, mattis et feugiat ut, porttitor nec risus.</p>
                                    </blockquote>
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                    <div class="parallax-testimonial-review">
                                        <img src="images/testimonials/2.png" alt="testimonial">
                                        <span>Jonathan Dower</span>
                                        <small>Leopard</small>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="parallax-testimonial-item">
                                    <blockquote>
                                        <p>Nunc aliquet tincidunt metus, sit amet mattis lectus sodales ac. Suspendisse rhoncus dictum eros, ut egestas eros luctus eget. Nam nibh sem, mattis et feugiat ut, porttitor nec risus.</p>
                                    </blockquote>
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </p>
                                    <div class="parallax-testimonial-review">
                                        <img src="images/testimonials/3.png" alt="testimonial">
                                        <span>Jonathan Dower</span>
                                        <small>Leopard</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ol class="carousel-indicators">
                            <li data-slide-to="0" data-target="#parallax-testimonial-carousel" class=""></li>
                            <li data-slide-to="1" data-target="#parallax-testimonial-carousel" class="active"></li>
                            <li data-slide-to="2" data-target="#parallax-testimonial-carousel" class=""></li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>

        <section class="super_sub_content">
            <div class="dividerHeading text-center">
                <h4><span>RECENT PORTFOLIO ITEMS</span></h4>
            </div>

            <nav class="clearfix">
                <ul id="filter">
                    <li data-filter="*" class="selected"><a href="#">All Works</a></li>
                    <li data-filter=".mockups"><a href="#">Mockups</a></li>
                    <li data-filter=".graphic-design"><a href="#">Graphics</a></li>
                    <li data-filter=".web-design"><a href="#">Web Projects</a></li>
                    <li data-filter=".flayers"><a href="#">Flayers</a></li>
                </ul>
            </nav>

            <div class="portfolio-centered">
                <div class="recentitems portfolio">

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_1.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>A Graphic Design Item</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item web-design graphic-design">
                        <div class="box">
                            <img src="images/portfolio/portfolio_2.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>New Flayer Design Item</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item graphic-design">
                        <div class="box">
                            <img src="images/portfolio/portfolio_3.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Gray and Pink</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_4.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Amazing Keyboard Desin</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item flayers">
                        <div class="box">
                            <img src="images/portfolio/portfolio_5.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Our Favorite Colors</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item flayers">
                        <div class="box">
                            <img src="images/portfolio/portfolio_6.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Not War Make Design</h5>
                                    <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item graphic-design mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_7.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>A GREAT MOCK-UPS</h5>
                                    <a href="images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item web-design mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_8.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Missis Of 2014</h5>
                                    <a href="images/portfolio/full/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item web-design mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_9.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Light Carpet</h5>
                                    <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                    <div class="portfolio-item web-design mockups">
                        <div class="box">
                            <img src="images/portfolio/portfolio_10.png" alt="">
                            <div class="option inner">
                                <div>
                                    <h5>Business Card Mock-Up</h5>
                                    <a href="images/portfolio/full/portfolio_8.png" class="fa fa-search mfp-image"></a>
                                    <a href="portfolio_single.html" class="fa fa-link"></a>
                                </div>
                            </div>
                        </div>box
                    </div>

                </div>portfolio
            </div>portfolio container
        </section>

        <div class="grey-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5 col-md-offset-1 super_sub_content clearfix same-height">
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-pencil"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Clean &amp; Minimal</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-diamond"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Branding Theme</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-anchor"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Modern Design</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-gears"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Quick Support</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 inner-image same-height hidden-sm hidden-xs " style="background:url('images/awesome.png')no-repeat;"></div>
                </div>
            </div>
        </div>

        <div class="super_sub_content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7">
                        <img class="img-responsive center-block" src="images/imac.png"/>
                    </div>
                    <div class="feature-block col-sm-5">
                        <h4>Mobile is the future,<span><br/> fully responsive & retina ready</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam earum enim est natus nulla odio perferendis totam. A eaque,  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio  consectetur adipisicing elit. Aliquam earum enim est natus nulla odio nesciunt. Autem cum distinctio eligendi impedit mollitia officia perferendis praesentium tempore veniam voluptas. Assumenda fuga laboriosam modi perspiciatis possimus rem suscipit. Adipisci, eos exercitationem molestiae nesciunt quaerat ullam veniam vitae voluptatum.
                        </p>
                        <a class="btn btn-default" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="grey-line-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-12 sub_content same-height">
                        <div class="col-sm-12">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-pencil"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Clean &amp; Minimal</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada in enim vulputate ullamcorper. Nam semper, nibh at porta fermentum, sem felis. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-anchor"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Branding Theme</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada in enim vulputate ullamcorper. Nam semper, nibh at porta fermentum, sem felis.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="serviceBox_1">
                                <div class="service-icon">
                                    <i class="fa fa-gears"></i>
                                </div>
                                <div class="service-content">
                                    <h3>Modern Design</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada in enim vulputate ullamcorper. Nam semper, nibh at porta fermentum, sem felis.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 inner-image hidden-sm hidden-xs same-height" style="background:url('images/slide-1.png')no-repeat;"></div>
                </div>
            </div>
        </div>

        <div class="feature-block pdt-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 text-center">
                        <img class="" src="images/awesome-img.png"/>
                    </div>
                    <div class="col-md-5">
                        <h4>Professional,<span><br/>business solution & consulting</span></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut est accumsan, sollicitudin neque eget, sollicitudin ex. Quisque sit amet. </p>
                        <a class="btn btn-default mrgb-20" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div> -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="serviceBox_6 same-height">
                        <div class="service-content">
                            <h3>Clean& powerful code</h3>
                            <span class="line"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus condimentum felis, sit amet placerat felis. Mauris porta lorem.</p>
                            <a class="btn btn-default" href="">Read more <i class="fa fa-thumbs-up"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="serviceBox_6 same-height purple">
                        <div class="service-content">
                            <h3>Incredibly Flexible</h3>
                            <span class="line"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus condimentum felis, sit amet placerat felis. Mauris porta lorem.</p>
                            <a class="btn btn-default" href="">Read more <i class="fa fa-thumbs-up"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="serviceBox_6 same-height black">
                        <div class="service-content">
                            <h3>Quick Support</h3>
                            <span class="line"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas luctus condimentum felis, sit amet placerat felis. Mauris porta lorem.</p>
                            <a class="btn btn-default" href="">Read more <i class="fa fa-thumbs-up"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- <div class="super_sub_content grey_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mrgt-70">
                        <div class="serviceBox_7 right">
                            <div class="service-icon">
                                <i class="fa fa-headphones"></i>
                            </div>
                            <h3>SEO Ready</h3>
                            <p>
                                Drag more traffic to your website with our SEO Friendly theme: simply bank...
                            </p>
                        </div>

                        <div class="serviceBox_7 right">
                            <div class="service-icon">
                                <i class="fa fa-tasks"></i>
                            </div>
                            <h3>Retina Ready</h3>
                            <p>
                                All our themes come with extensive HTML Documentation that teaches you how...
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <img src="images/phones.png" class="img-responsive center-block">
                    </div>

                    <div class="col-md-4 mrgt-70">
                        <div class="serviceBox_7">
                            <div class="service-icon">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <h3>easy customizable</h3>
                            <p>
                                All our themes include advanced options which makes them super flexible for...
                            </p>
                        </div>
                        <div class="serviceBox_7">
                            <div class="service-icon">
                                <i class="fa fa-gears"></i>
                            </div>
                            <h3>global features</h3>
                            <p>
                                We made sure images on your website would look stunning on any device. Our...
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <!--</div>-->

        <div class="container">
            <div class="row super_sub_content">
                <div class="col-md-12">
                    <div class="dividerHeading">
                        <h4><span>Recent news</span></h4>
                    </div>

                    <div id="post-slider" class="owl-carousel">
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="images/blog/blog_1.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="images/blog/blog_2.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="images/blog/blog_3.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="images/blog/blog-4.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="images/blog/blog_1.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                        <div class="post-slide">
                            <div class="post-img">
                                <img src="images/blog/blog_2.png">
                            </div>
                            <h5 class="post-title"><a href="blog-post.html">Latest News Post</a></h5>
                            <div class="post-date">
                                <i class="fa fa-calendar"></i> April 23, 2015
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed eleifend urna eu ...</p>
                            <a class="readmore" href="">Read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<!--         <section class="promo_box wow bounceInUp" data-wow-offset="50">
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
    </section> -->

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
    <script src="/kobook/js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="/kobook/js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.smartmenus.bootstrap.min.js"></script>
    <script type="text/javascript" src="/kobook/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jflickrfeed.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.easypiechart.min.js"></script>
    <script type="text/javascript" src="/kobook/js/swipe.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery-hoverdirection.min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="/kobook/js/jquery-scrolltofixed-min.js"></script>

    <script src="/kobook/js/main.js"></script>

    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->

        <script>
            /*Portfolio*/
            (function($) {
                "use strict";
                var $container = $('.portfolio'),
                        $items = $container.find('.portfolio-item'),
                        portfolioLayout = 'fitRows';

                if( $container.hasClass('portfolio-centered') ) {
                    portfolioLayout = 'masonry';
                }

                $container.isotope({
                    filter: '*',
                    animationEngine: 'best-available',
                    layoutMode: portfolioLayout,
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    },
                    masonry: {
                    }
                }, refreshWaypoints());

                function refreshWaypoints() {
                    setTimeout(function() {
                    }, 1000);
                }

                $('ul#filter li').on('click', function() {
                    var selector = $(this).attr('data-filter');
                    $container.isotope({ filter: selector }, refreshWaypoints());
                    $('ul#filter li').removeClass('selected');
                    $(this).addClass('selected');
                    return false;
                });

                function getColumnNumber() {
                    var winWidth = $(window).width(),
                            columnNumber = 1;

                    if (winWidth > 1200) {
                        columnNumber = 5;
                    } else if (winWidth > 950) {
                        columnNumber = 4;
                    } else if (winWidth > 600) {
                        columnNumber = 3;
                    } else if (winWidth > 400) {
                        columnNumber = 2;
                    } else if (winWidth > 250) {
                        columnNumber = 1;
                    }
                    return columnNumber;
                }

                function setColumns() {
                    var winWidth = $(window).width(),
                            columnNumber = getColumnNumber(),
                            itemWidth = Math.floor(winWidth / columnNumber);

                    $container.find('.portfolio-item').each(function() {
                        $(this).css( {
                            width : itemWidth + 'px'
                        });
                    });
                }

                function setPortfolio() {
                    setColumns();
                    $container.isotope('reLayout');
                }

                $container.imagesLoaded(function () {
                    setPortfolio();
                });

                $(window).on('resize', function () {
                    setPortfolio();
                });
            })(jQuery);
        </script>


    <!-- WARNING: Wow.js doesn't work in IE 9 or less -->
    <!--[if gte IE 9 | !IE ]><!-->
    <script type="text/javascript" src="/kobook/js/wow.min.js"></script>
    <script>
        // WOW Animation
        new WOW().init();
    </script>
    <![endif]-->

</body>
</html>