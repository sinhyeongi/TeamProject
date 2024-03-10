<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<div class="reserve_view_btn">
<button class="reserve_view_show_btn">날짜 및 인원 선택하기</button>
<button class="reserve_view_hidden_btn">날짜 및 인원 숨기기</button>
</div>
<div class="reserve_showBox">
<div class="reser_date_title_div">
	<h2>날짜 선택</h2>
</div>
<div class="reser_date_select_div">
	<input type="text" class="reserve_start_date">
	<input type="text" class="reserve_end_date">
	
</div>
<div class="reser_date_people_div">
	<h2>총 인원 입력</h2>
	<input type="number" id="people" min="1" max="${room.occ }" value="${room.occ }" name="people">
</div>
</div>
<input type="hidden" value="${room.price }" name="room_price">
<input type="hidden" value="${user.level }" name="user_level">
<input type="hidden" value="${room.no }" name="room_no">
<input type="hidden" value="${hotel.no }" name="hotel_no">
<main class="reserve_main">
	<input type="hidden" value="${log }" name="id">
	<div>
		<div class="reserve_title">
			<a href="Main.do"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#333333" viewBox="0 0 20 20" data-v-d882d821=""><path fill="#333" d="M17.586 9v2h-12.2c.003.004.157.17.36.366.203.196 5.24 5.234 5.24 5.234l-1.4 1.4-6.572-6.567a2.027 2.027 0 0 1 0-2.866L9.586 2l1.4 1.4-5.24 5.246a8.33 8.33 0 0 0-.36.354h12.2Z"></path></svg></a>
			<span class="reserve_title">예약 확인 및 결제</span>
		</div>
		<form method="post" id="reserve_form">
			<h3>예약자 정보</h3>
			<span>예약자 이름</span>
			<div><input type="text" name="name" placeholder="홍길동"><br/><div class="reserve_name_check">이름을 확인하세요</div></div>
			<span>휴대전화 번호</span>
			<div><input type="tel" name="tel" placeholder="010-1234-5678"><input type="button" id="check_tel" value="전화번호 본인 인증"><br/><div class="reserve_tel_check">전화번호를 확인하세요</div></div>
			<hr />
				<div id="reserve_img_div">
					<c:if test="${log eq null }">
					<img src="${ctx }/img/reserve_login.png" alt="img" id="reserve_login">
					</c:if>
					<c:if test="${ log ne null }">
						<c:forEach items="${coupon }" var="co">
							<div class="member_coupon_div">
							<div><span>${co.name }</span>쿠폰</div>
							<div><span id="coupon_dislate">${co.dislate }</span>%</div>
							<c:if test="${ co.disprice ne 0  and co.disprice ne null}">
								<div>최대<span id="coupon_maxDisprice">${co.disprice }</span>원</div>
							</c:if>
							<input type="radio" name="coupon" value="${co.no }">
							</div>
						</c:forEach>
						<c:if test="${coupon eq null or coupon.size() eq 0 }">
							<div style="width:100%; height: 100%; display: flex; justify-content: center; align-items: center;"><h2 style="color:#e9eaff; text-align: center;">쿠폰이 없습니다....</h2></div>
						</c:if>
					</c:if>
				</div>
			<hr/>
			<div class="visit_div">
				<span><input type="radio" name="visit" value="도보" checked="checked"></span><span>도보</span>
				<c:if test="${fn:contains(hotel.fac,'주차장')}">
				<span><input type="radio" name="visit" value="차량"></span><span>차량</span>
				</c:if>
			</div>
			<div>
				<h3 class="payment_title">결제 하기(<span id="reserve_view_price">${room.price }</span>원)</h3>
				<input type="button" name="payment" value="결제하기">
			</div>
			<div class="reserve_add_req_div"><span>추가 요청사항</span><textarea rows="3" cols="10" id="add_req"></textarea></div>
		</form>
	</div>
	<div>
		<div class="reser_img_secssion">
		<c:if test="${img ne null and img ne '' }">
			<img src="${ctx }/img/${img }">
		</c:if>
		<c:if test="${img eq null or img eq '' }">
			<img src="${ctx }/img/Main_logo.jpeg">
		</c:if>
		</div>
		<div class="reser_right_content">
			<div id="reser_map">
				<input type="hidden" id="hotel_y" value="${hotel.y }">
				<input type="hidden" id="hotel_x" value="${hotel.x }">
				<div id="reserve_map_view"></div>
			</div>
			<span>호텔 이름 :<span id="reserve_hotel_name_u"> ${hotel.name }</span> / 남은 방 : ${room.total_qty }</span>
			<span>객실 : ${room.name }</span>
			<span>가격 : <span  id="reserve_price">${room.price }</span></span>
		</div>
	</div>
</main>