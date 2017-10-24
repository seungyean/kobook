<%@page import="kobook.book.domain.Search"%>
<%@page import="kobook.book.domain.Book"%>
<%@page import="java.util.List"%>
<%@page import="kobook.book.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />
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
                            <h2>지역검색</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <!-- <li>Portfolio</li> -->
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

	<div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">ㄷ
                <div class="dividerHeading">
                    <h4><span>Tables</span></h4>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="table-responsive">
                
                
                <form action="/kobook/book/locationAction.do" method="post">
                <div>
					<input type="hidden" name="temp" value="temp">
					<input type="text" class="input-text" name="searchKey" id="s" placeholder="지역을 입력하세요" />
					<input type="submit" id="searchsubmit" value="search" />		
				</div>
                </form>
                

                
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>글번호</th>
                            <th>책제목</th>
                            <th>책상태</th>
                            <th>판매상태</th>
                            <th>책가격</th>
                            <th>안심유무</th>
                            <th>날짜</th>
                        </tr>
                        </thead>
                      
                        
                 <c:forEach var="b" items="${listModel2.list}">
				<tr>
				<td>${b.book_id}</td>
				<td><a href="/kobook/book/detailAction.do?book_id=${b.book_id}">${b.book_name}</a></td>
				
				<td>
				<c:if test="${b.book_status !=null}">
				<c:choose>
				<c:when test="${b.book_status=='G'}">
				양호
				</c:when>
				<c:when test="${b.book_status=='B'}">
				나쁨
				</c:when>
				<c:otherwise>
				보통
				</c:otherwise>
				</c:choose>
				</c:if>
				</td>
				
				
				<td>
				<c:if test="${b.book_sell_state !=null}">
				<c:choose>
				<c:when test="${b.book_sell_state=='I'}">
				판매중
				</c:when>
				<c:when test="${b.book_sell_state=='C'}">
				판매완료
				</c:when>
				</c:choose>
				</c:if>
				</td>
				
				
				<td>${b.book_m_price}</td>
				<td>${b.book_safe_yn}</td>
				<td><fmt:formatDate value="${b.book_date}"
						pattern='yyyy-MM-dd' /></td>
			
			</tr>
			
		</c:forEach> 
                    </table>
                    
                    
                </div>
                
            </div>
        </div> <!--./row-->

 	

		
	
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
    <script type="text/javascript" src="/kobook/js/jquery-hoverdirection.min.js"></script>

    <script src="js/main.js"></script>
    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>