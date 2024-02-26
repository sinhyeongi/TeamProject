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
	<h1>Main</h1>
	<a href="Login.do">로그인하기</a><br/>
	<a href="reserve.do">예약페이지 (임시)</a>
</main>
</body>
</html>