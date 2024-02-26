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
	  <div>
	  		<img src="${ctx }/img/Main_category_jeju.png" alt="jeju"><br/>
		  제주도
	  </div>
	  <div>서울</div>
	  <div>부산</div>
	  <div>강릉</div>
	  <div>인천</div>
	  <div>경주</div>
	  <div>해운대</div>
	  <div>가평</div>
	  <div>여수</div>
	  <div>속초</div>
	</div>
	<h1>Main</h1>
	<a href="Login.do">로그인하기</a><br/>
	<a href="reserve.do">예약페이지 (임시)</a>
</main>
</body>
</html>