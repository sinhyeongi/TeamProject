<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="nomember_reserve_info_main">
	<h3 id="nomember_reserve_info_title">예약 목록</h3>
	<div id="nomember_reserve_info_content">
		<c:forEach var="re" items="${list }">
		<div>
			<input type="hidden" value="${re.room_no }" name="room_no">
			<span>예약 번호 : <span id="reserve_uid">${re.uid }</span></span>
			<span>${re.rday } ~ ${re.dday }</span>
			<span><span>${re.price }</span>원</span>
			<span><input type="radio" name="radio" value="${re.no }"></span>
		</div>
		</c:forEach>
		<c:if test="${list eq null or list.size() eq 0 }">
			<div>예약된 데이터가 없습니다.....</div>
		</c:if>
	</div>
	<div><button id="reserve_cancel">취소하기</button></div>
</main>

