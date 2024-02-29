<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!--  Js import -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script><!-- jquert  -->
	<c:if test="${page eq 'Login.jsp' }">
		<script defer="defer" src="${ctx }/Js/Modal/M_Login.js?dsa"></script>
	</c:if>
	
	<!--  Css Import -->
	<c:if test="${page eq 'Login.jsp' }">
		<link rel="stylesheet" type="text/css" href="${ctx}/Css/Modal/M_Login.css?dsa">
	</c:if>
</head>
<body>