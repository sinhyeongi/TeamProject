<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
	<!-- jquert  --> 
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- flatpickr js import	 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
	<!--  Js import -->
	<script defer="defer" src="${ctx }/Js/footer.js?dsa"></script>
	<c:if test="${page eq 'reserve.jsp'}">
		<!-- iamport.payment.js -->
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
		<script defer="defer" src="${ctx }/Js/reserve.js?dsad3232sadsa"></script>
	</c:if>
	<!--  css import -->
	<link rel="stylesheet" href="${ctx}/Css/footer.css?dsdsd32" type="text/css">
	<c:if test="${page eq 'reserve.jsp'}">
		<link rel="stylesheet" href="${ctx}/Css/reserve.css?dsd3a" type="text/css">
	</c:if>
</head>
<body>

