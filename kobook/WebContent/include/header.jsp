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
                            <h1><a href="/kobook/index.do">KOBOOK</a></h1>
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
                                    <li ><a href="/kobook/index.do">Home</a>
                                    </li>

                                    <li><a href="/kobook/search/allSearch.do">전체검색</a></li>
                                    <li><a href="/kobook/search/major.do">전공검색</a></li>
                                    <li><a href="/kobook/search/location.do">지역검색</a></li>

                                    <li><a href="/kobook/community/blackList.do" >커뮤니티</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="/kobook/community/blackList.do">신고합니다</a></li>
                                            <li><a href="/kobook/community/donate.do">무료나눔</a></li>
                                            <li><a href="/kobook/community/photoReview.do">포토리뷰</a></li>
                                            <li><a href="/kobook/community/noti.do">공지사항</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li><a href="/kobook/mypage/userUpdate.do" >마이페이지</a>
                                        <ul class="dropdown-menu">
                                            		<li><a href="/kobook/mypage/userUpdate.do">회원정보수정</a></li>
                                                    <li><a href="/kobook/mypage/mileage.do">마일리지</a></li>
                                                    <li><a href="/kobook/mypage/pickList.do">찜 리스트</a></li>
                                                    <li><a href="/kobook/mypage/buyList.do">구매내역</a></li>
                                                    <li><a href="/kobook/mypage/sellList.do">판매내역</a></li>
                                                    <li><a href="/kobook/mypage/reviewList.do">판매후기</a></li>
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