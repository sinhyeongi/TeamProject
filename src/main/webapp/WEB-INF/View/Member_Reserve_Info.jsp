<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_Profile_Main">
	<div class="left_item">
		<jsp:include page="Left_Item.jsp"></jsp:include>
	</div>
	<div class="content">
		<h2 class="title">예약 내역</h2>
		<c:forEach var="list" items="${list }">
			<div class="Reserve_Info_item">
				<div><span>예약 번호</span><span class="uid">${list.uid }</span></div>
				<div><span>호텔 이름</span><span>${list.hotel_name }</span></div>
				<div><span>객 실</span><span>${list.room_name }</span></div>
				<div><span>예약 기간</span><span>${list.rday }일 ~ ${list.dday }일</span></div>
				<div><span>총 금액</span><span class="price">${list.price }원</span></div>
				<input type="hidden" name="room_no" value="${list.room_no }">
				<input type="radio" name="reserve_info_radio" id="reserve_info_radio" value="${list.no }">
			</div>
		</c:forEach>
		<c:if test="${list eq null or list.size() eq 0 }">
			<div>
				<span>아직 예약 전입니다.....</span>
			</div>
		</c:if>
		<c:if test="${list ne null and list.size() ne 0 }">
		<div class="cancle_reserve"><button id="Reserve_Info_submit">취소하기</button></div>
		</c:if>
	</div>
	
</main>
