<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="wrapper"> <section class="page_head">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="page_title">
					<h3>관리자모드</h3>
				</div>
				<nav id="mainUserManage">
				<ul>
					<li>회원관리</li>
					<table border="1">
						<tr>
							<td>번호</td>
							<td>이메일</td>
							<td>이름</td>
							<td>주소</td>
							<td>번호</td>
							<td>마일리지</td>
							<td>회원등급</td>
							<td>회원분류</td>
						<tr>
<%-- 						<tr>
						<c:forEach var="user" items="${list }"> 
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
						<tr> --%>
					</table>
				</ul>
				<nav id="mainBoardManage">
				<ul>
					<li>게시판관리</li>
					<table border="1">
						<tr>
							<td>글번호</td>
							<td>글제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td>좋아요</td>
						<tr>
						<tr>				
<%-- 						<c:forEach var="user" items="${list }"> 
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
						<tr> --%>
						</tr>
					</table>
				</ul>		
				<nav id="mainTradeManage">
				<ul>
					<li>안심거래관리</li>
					<table border="1">
						<tr>
							<td>글번호</td>
							<td>글제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td>배송유무</td>
						<tr>				
<%-- 						<c:forEach var="user" items="${list }"> 
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
							<td>${list.}</td>
						<tr> --%>
						</tr>
						</table>						
				</nav>
			</div>
		</div>
	</div>
	</section>
</body>
</html>