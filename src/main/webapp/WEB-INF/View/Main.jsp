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
	<c:forEach var="vo" items="${list }">
		${vo }<br/>
		<hr/>
	</c:forEach>
	<h1>Main</h1>
	<a href="${ctx}/TeamProject/Login.do">로그인하기</a>
</main>
</body>
</html>