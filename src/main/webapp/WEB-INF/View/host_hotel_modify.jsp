<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<input type="hidden" name="hotel_no" id="hotel_no" value="${hotel.no }">
<main id="host_hotel_modify_main">
	<div class="hotel_info">
		<div><span id="hotel_title">배경이 검정색인 부분은 변경이 불가능 합니다.<br/>(변경 필요시 관리자에게 요청하세요)</span></div>
		<div><span>호텔 이름</span><span><input type="text" name="hotel_name" id="hotel_name" value="${hotel.name  }"></span></div>
		<div><span>성급</span><span><input type="number" name="hotel_star" id="hotel_star" value="${hotel.star }" min="1" max="5"></span></div>
		<div><span>전화번호</span><span><input type="tel" name="hotel_tel" id="hotel_tel" value="${hotel.tel }" readonly="readonly"></span></div>
		<div><span>부대시설</span><span><textarea rows="3" cols="10" name="hotel_fac" id="hotel_fac">${hotel.fac }</textarea> </span></div>
		<div><span>주소</span><span><input type="text" name="hotel_address" id="hotel_address" value="${hotel.address}" readonly="readonly"></span></div>
		<div><span>체크 인</span><span><input type="time" name="hotel_checkin" id="hotel_checkin" value="${hotel.checkin }"></span></div>
		<div><span>체크 아웃</span><span><input type="time" name="hotel_checkout" id="hotel_checkout" value="${hotel.checkout }"></span></div>
		<div><span>계좌번호</span><span><input type="text" name="hotel_account" id="hotel_account" value="${hotel.account }" placeholder="1234-1234123-123"></span></div>
		<div><span><button id="hotel_submit">수정하기</button></span><span><button id="hotel_img_submit">이미지 수정하기</button></span></div>
	</div>
	<button class="host_hotel_info_room">룸 정보 보기</button>
	<button class="host_hotel_info_hotel">호텔 정보 보기</button>
	<div class="room_info">
		<h2 style="text-align: center;">룸 목록</h2>
		<c:forEach var="room" items="${room }">
			<div>
				<div><span>방 이름</span><span>${room.name }</span></div>
				<div>
					<span>방 이름</span>${room.name }<span></span>
				</div>
			</div>
		</c:forEach>
	</div>
	
</main>