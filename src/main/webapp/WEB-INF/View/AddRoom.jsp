<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<input type="hidden" name="hotel_no" value="${hotel_no }">
<main id="AddRoom_Main">
	<h2>룸 추가하기</h2>
	<div>
		<div>
			<span>방 이름</span><span><input type="text" name="name"></span>
		</div>
		<div>
			<span>가 격</span><span><input type="number" name="price" min="100"></span>
		</div>
		<div>
			<span>객실 수</span><span><input type="number" name="total_qty" min="1"></span>
		</div>
		<div>
			<span>객실 최대 인원</span><span><input type="number" name="occ" min="1"></span>
		</div>
		<div>
			<span>침대 정보</span><span><textarea name="bedinfo"></textarea></span>
		</div>
		<div>
			<span>편의 시설</span><span><textarea name="amenities"></textarea></span>
		</div>
		<div>
			<span><button id="AddRoom_submit">제출하기</button></span>
		</div>
	</div>
</main>
