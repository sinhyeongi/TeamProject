<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="nomember_reserve_info_main">
	<h3 id="nomember_reserve_info_title">비회원 예약 조회</h3>
	<div id="nomember_reserve_info_content">
		<div><span>이름 입력</span></div>
		<div><input type="text" name="name" id="name"></div>
		<div><span>전화번호 입력</span></div>
		<div><input type="tel" name="phone" id="phone"></div>
		<div><button id="nomember_reserve_info_btn">조회하기</button></div>
		<div><span><a href="Login.do" style="color:#b1b1b1;">이미 회원 이신가요?</a></span></div>
	</div>
</main>

