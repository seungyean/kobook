<%-- <%@page import="kobook.book.dao.BookDAO"%> --%>
<%@page import="kobook.book.domain.BookSearch"%>
<%@page import="kobook.book.domain.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>





<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1">
<title>전체검색[전공]</title>
<meta name="description" content="">

 <!-- CSS FILES -->
    <link rel="stylesheet" href="/kobook/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/kobook/css/style.css">
    <link rel="stylesheet" type="text/css" href="/kobook/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/kobook/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="/kobook/css/switcher.css" media="screen" />
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
                     <h2>도서목록</h2>
                  </div>
                  <nav id="breadcrumbs">
                     <ul>
                        <li><a href="index.html">홈</a>/</li>
                        <li>전체검색</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>

   
      <section class="content portfolio small-images">
      <form action="/kobook/book/insertform.do" method="post">
               <!--begin isotope -->
               <div class="isotope col-lg-12">
                  <!--begin portfolio filter -->
                  <ul id="filter" class="option-set clearfix">
                     <!-- <li data-filter="*" class="selected"><a href="#">All</a></li> -->
                     <li data-filter="*" class="selected"><a href="#">All</a></li>
                     <li data-filter=".Social"><a href="#">사회계열</a></li>
                     <li data-filter=".Law"><a href="#">법학계열</a></li>
                     <li data-filter=".Medical"><a href="#">의학계열</a></li>
                     <li data-filter=".Engineering"><a href="#">공학계열</a></li>
                     <li data-filter=".Science"><a href="#">자연계열</a></li>
                     <li data-filter=".Art"><a href="#">예체능계열</a></li>
                     <li data-filter=".Language"><a href="#">어문학계열</a></li>

                  </ul>
                  
                  <!--begin portfolio_list -->   
            <ul id="list" class="portfolio_list clearfix ">      
                   
                    <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Social" />
                      <c:if test="${b.book_kind=='사회계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Social">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" alt="aa" height="280" />
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                       <span>${b.book_m_price}원</span>
                                       
                                        <c:choose>
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       
                                       
                                 <!--     <span>Business</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  
                  
                  <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Law" />
                      <c:if test="${b.book_kind=='법학계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Law">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" alt="aa" height="280"/>
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                       <span>${b.book_m_price}원</span>
                                       
                                        <c:choose>
                                        
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       <!-- <span>Economy</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  
                  <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Medical" />
                      <c:if test="${b.book_kind=='의학계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Medical">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" height="280" alt="aa"/>
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/bookdetailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                       <span>${b.book_m_price}원</span>
                                        <c:choose>
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       <!-- <span>Computer</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  
                  <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Engineering" />
                      <c:if test="${b.book_kind=='공학계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Engineering">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" height="280" alt="aa"/>
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                    <span>${b.book_m_price}원</span>
                                     <c:choose>
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       <!-- <span>Deutsch</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  
                  <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Science" />
                      <c:if test="${b.book_kind=='자연계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Science">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" height="280" alt="aa"/>
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                       <span>${b.book_m_price}원</span>
                                        <c:choose>
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       <!-- <span>Law</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  
                  <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Art" />
                      <c:if test="${b.book_kind=='예체능계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Art">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" height="280" alt="aa"/>
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                       <span>${b.book_m_price}원</span>
                                        <c:choose>
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       <!-- <span>History</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  
                  <!--begin List Item -->
                     <c:forEach var="b" items="${listModel.list}">
                     <c:set var="b.book_kind" value="Language" />
                      <c:if test="${b.book_kind=='어문학계열'}">
                        <li class="list_item col-lg-3 col-md-4 col-sm-6 Language">
                           <div class="recent-item box">
                              <figure class="touching ">
                              
                              <img src="/kobook/upload/${b.book_img }" height="280"  alt="aa"/>
                                 <a href="/kobook/book/detailAction.do?book_id=${b.book_id}"></a>
                                 <div class="option inner">
                                    <div>
                                       <h5>${b.book_name}</h5>
                                       <a href="/kobook/upload/${b.book_img }" class="fa fa-search mfp-image"></a> 
                                       <a href="/kobook/book/detailAction.do?book_id=${b.book_id}" class="fa fa-link"></a> 
                                    <span>${b.book_m_price}원</span>
                                     <c:choose>
                                       <c:when test="${b.book_sell_state=='I'}">
                                       <span>판매중</span>
                                       </c:when>
                                       
                                       <c:when test="${b.book_sell_state=='C'}">
                                       <span>판매완료</span>
                                       </c:when>
                                       
                                       </c:choose>
                                       <!-- <span>Physics</span> -->
                                    </div>
                                 </div>
                              </figure>
                           </div>
                        </li>
                        </c:if>
                        </c:forEach>
                  <!--end List Item --> 
                  </ul>
                  <!--end portfolio_list -->   
               </div>
               <!--end isotope -->
               
               
               <div class="col-sm-12 text-center">
                <ul class="pagination">
                  <!-- <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul> -->
                        
                        
                  <!-- 페이징 -->
                  <!-- 이전영역 생성(start page) -->
                  <c:if test="${listModel.startPage > 5 }">
                    <li><a href="/kobook/book/listAction.do?pageNum=${listModel.startPage -1}">이전</a></li>
                  </c:if>

                  <!-- 페이지 목록 -->
                  <c:forEach var="pageNo" begin="${listModel.startPage}"
                     end="${listModel.endPage}">
                     <c:if test="${listModel.requestPage == pageNo }">
                    
                     </c:if>
                      <li><a href="/kobook/book/listAction.do?pageNum=${pageNo}"> ${pageNo} </a></li>
                     <c:if test="${listModel.requestPage == pageNo }">
                     
                     </c:if>
                  </c:forEach>

                  <!-- 이후영역 생성(end) -->
                  <c:if test="${listModel.endPage < listModel.totalPageCount}">
                      <li><a href="/kobook/book/listAction.do?pageNum=${listModel.endPage +1}">이후</a></li>
                  </c:if>
                  <br>
				</ul>
               </div> <!--text container -->
               

   <input type="submit" value="글쓰기" class="btn-default"  />
   </form>
   
<div class="container">
				<div class="row">
					<div class="row">
  						<div class="col-md-6 col-md-offset-3">
               <form method="post" id="site-searchform" action="/kobook/book/listAction.do">
                  <div>
                   <input type="hidden" name="temp" value="temp">
                     제목: <input type="checkbox" name="area" value="book_name" /> 
                     해시태그포함 검색유무: <input type="checkbox" name="area" value="book_hash" /> 
                     안심거래사용: <input type="checkbox" name="safe_yn" value="book_safe_yn" />
                     <!-- 지역명검색: <input type="checkbox" name="location" value="book_location" />  -->
                     가격순 <input type="radio" name="sort" value="book_m_price"/>         
                     상태순 <input type="radio" name="sort" value="book_status"/> <br>     
                    <input type="text" class="search-query form-control" name="searchKey" id="s" placeholder="책제목 을 입력하세요" />
                    <input type="submit"  value="search" class="btn-default" style="width: 100px; height: 40px" />
                  </div>
               </form>
             				</div>
					</div>
					
					
							
				</div>
			</div>  
               
               
      </section>
      <!--end small images  -->


   </section>
   <!--end wrapper-->

   <!-- 푸터 -->
        <jsp:include page="/include/footer.jsp" />
     <!-- /푸터 -->
   

   <script type="text/javascript" src="/kobook/js/jquery-1.10.2.min.js"></script>
   <script src="/kobook/js/bootstrap.min.js"></script>
   <script src="/kobook/js/jquery.easing.1.3.js"></script>
   <script src="/kobook/js/retina-1.1.0.min.js"></script>
   <script type="text/javascript" src="/kobook/js/jquery.cookie.js"></script>
   <!-- jQuery cookie -->
   <script type="text/javascript" src="/kobook/js/styleswitch.js"></script>
   <!-- Style Colors Switcher -->
   <script type="text/javascript" src="/kobook/js/jquery.smartmenus.min.js"></script>
   <script type="text/javascript"
      src="/kobook/js/jquery.smartmenus.bootstrap.min.js"></script>
   <script type="text/javascript" src="/kobook/js/jflickrfeed.js"></script>
   <script type="text/javascript" src="/kobook/js/jquery.magnific-popup.min.js"></script>
   <script type="text/javascript" src="/kobook/js/jquery.isotope.min.js"></script>
   <script type="text/javascript" src="/kobook/js/swipe.js"></script>
   <script type="text/javascript" src="/kobook/js/jquery-scrolltofixed-min.js"></script>
   <script type="text/javascript" src="/kobook/js/jquery-hoverdirection.min.js"></script>

   <script src="/kobook/js/main.js"></script>
   <!-- Start Style Switcher -->
   <div class="switcher"></div>
   <!-- End Style Switcher -->
</body>
</html>