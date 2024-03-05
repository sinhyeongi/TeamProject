<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
</head>
<body>
<main>
	<div id="main_log">
		<img alt="Main_logo" src="${ctx }/img/Main_logo.jpeg">
	</div>
	<c:forEach var="vo" items="${list }">
		${vo }<br/>
		<hr/>
	</c:forEach>
	<h2 id="slick_title">국내 인기 여행지</h2>
	<div class="multiple-items">
	<c:forEach var="i" begin="1" end="10">
	  <div>
	  	<img src="${ctx}/img/Main_category_jeju.png" width="90%" height="100%" alt="jeju">
		<div class=category_name>제주도</div>
	  </div>
	 </c:forEach>
	</div>
	<h1>Main</h1>
	<a href="Login.do">로그인하기</a><br/>
	<a href="reserve.do">예약페이지 (임시)</a><br/>
	<a href="HotelList.do">호텔 리스트 (임시)</a><br/>
	<a href="host_hotel_info.do">호텔 정보보기 (임시)</a><br/>
	<a href="HotelInfo.do">호텔 인포 (임시)</a>
	
</main>
</body>
</html>