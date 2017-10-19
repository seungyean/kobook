<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<header id="header">
        <div id="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 top-info hidden-xs">
                        <span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span>
                        <span><i class="fa fa-envelope"></i>Email: kobook@kobook.com</span>
                    </div>
                    <div class="col-sm-4 top-info">
                        <ul>
                            <li><a href="" class="my-tweet"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="" class="my-facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="" class="my-skype"><i class="fa fa-skype"></i></a></li>
                            <li><a href="" class="my-pint"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="" class="my-rss"><i class="fa fa-rss"></i></a></li>
                            <li><a href="" class="my-google"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="logo-bar">
            <div class="container">
                <div class="row">
                    <!-- Logo / Mobile Menu -->
                    <div  class="col-lg-3 col-sm-3 ">
                        <div id="logo">
                            <h1><a href="../main/main.jsp">KOBOOK</a></h1>
                        </div>
                    </div>
                    <!-- Navigation
    ================================================== -->
                    <div class="col-lg-9 col-sm-9">
                        <div class="navbar navbar-default navbar-static-top" role="navigation">
                            <!--  <div class="container">-->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li ><a href="../main/main.jsp">Home</a>
                                    </li>

                                    <li><a href="../search/allSearch.jsp">전체검색</a></li>
                                    <li><a href="../search/major.jsp">전공검색</a></li>
                                    <li><a href="../search/location.jsp">지역검색</a></li>

                                    <li><a href="../community/blackList.jsp" >커뮤니티</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="../community/blackList.jsp">신고합니다</a></li>
                                            <li><a href="../community/donate.jsp">무료나눔</a></li>
                                            <li><a href="../community/photoReview.jsp">포토리뷰</a></li>
                                            <li><a href="../community/noti.jsp">공지사항</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li><a href="../mypage/cart.jsp" >마이페이지</a>
                                        <ul class="dropdown-menu">
                                            		<li><a href="../mypage/userUpdate.jsp">회원정보수정</a></li>
                                            		<li><a href="../mypage/cart.jsp">장바구니</a></li>
                                                    <li><a href="../mypage/mileage.jsp">마일리지</a></li>
                                                    <li><a href="../mypage/pickList.jsp">찜 리스트</a></li>
                                                    <li><a href="../mypage/buyList.jsp">구매내역</a></li>
                                                    <li><a href="../mypage/sellList.jsp">판매내역</a></li>
                                                    <li><a href="../mypage/reviewList.jsp">판매후기</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>