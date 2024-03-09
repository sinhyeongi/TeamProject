<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Admin_Reserve_Main">
	<h2>예약 목록</h2>
	<div id="Admin_Reserve_Content">
		<c:forEach var="vo" items="${list }">
			<div>
				<div><span>예약 아이디</span><span class="uid">${vo.uid }</span></div>
				<div><span>예약자 이름</span><span>${vo.name }</span></div>
				<div><span>예약자 전화번호</span><span>${vo.phone }</span></div>
				<div><span>예약 일</span><span>${vo.rday } ~ ${vo.dday }</span></div>
				<div><span>결제 금액</span><span>${vo.price }</span></div>
				<div><span><input type="radio" name="admin_reserve_radio" value="${vo.no }"></span></div>
				<input type="hidden" name="room_no" value="${vo.room_no }">
			</div>
		</c:forEach>
	</div>
	<div><button id="admin_reserve_cancel_btn">예약 취소하기</button></div>
</main>