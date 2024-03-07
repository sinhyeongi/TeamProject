<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<body>
<main class="Modal_main">
	<h1 class="title">회원 정보</h1>
	<div class="Modal_content">
	<div class="Modal_section Modal_label_section">
		<div class="Modal_column">
			<div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_pw"><label>회원비밀번호</label></div>
					<div class="Modal_data data_pw">${member_vo.pw }</div>
				</div>
				<div class="Modal_items">
					<div class="Modal_label label_email"><label>회원이메일</label></div>
					<div class="Modal_data data_email">${member_vo.email}</div>
				</div>
			</div>
			<div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_name"><label>회원이름</label></div>
					<div class="Modal_data data_name">${member_vo.name}</div>
				</div>
				<div class="Modal_items">
					<div class="Modal_label label_birth"><label>생년월일</label></div>
					<div class="Modal_data data_birth">${member_vo.birth}</div>
				</div>
			</div>
			<div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_gender"><label>성별</label></div>	
					<div class="Modal_data data_gender">${member_vo.gender}</div>
				</div>
				<div class="Modal_items">
					<div class="Modal_label label_phone"><label>연락처</label></div>
					<div class="Modal_data data_phone">${member_vo.phone}</div>
				</div>
			</div>
			<div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_address"><label>주소</label></div>
					<div class="Modal_data data_address">${member_vo.address}</div>
				</div>
				<div class="Modal_items">
					<div class="Modal_label label_regist"><label>가입일</label></div>
					<div class="Modal_data data_regist">${member_vo.regist}</div>
				</div>
			</div>
			 <div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_point"><label>포인트</label></div>
					<div class="Modal_data data_point">${info_vo.point}</div>
				</div>
				<div class="Modal_items">
					<div class="Modal_label label_level"><label>레벨</label></div>
					<div class="Modal_data data_level">${info_vo.level}</div>
				</div>
			</div>
			<div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_info"><label>이용횟수</label></div>
					<div class="Modal_data data_info">${info_vo.usecount}</div>
				</div>
				<div class="Modal_items">
					<div class="Modal_label label_info"><label>출석횟수</label></div>
					<div class="Modal_data data_info">${info_vo.attendcount}</div>
				</div>
			</div>
			<div class="Modal_row">
				<div class="Modal_items">
					<div class="Modal_label label_info"><label>마지막 접속일</label></div>
					<div class="Modal_data data_info">${info_vo.ldate}</div>
				</div>
			</div>
		</div>
		<div class="Modal_column">
			<div class="Modal_coupons">
				<h2>보유쿠폰</h2>
				<div class="Modal_row">
					<div class="Modal_items">
					<c:if test="${fn:length(couponList) eq 0}">
					<h4>보유중인 쿠폰이 없습니다.</h4>
					</c:if>
					<c:if test="${fn:length(couponList) ne 0 }">
					<table>
						<tr class="labels">
							<td>쿠폰번호</td>
							<td>발급일</td>
							<td>쿠폰이름</td>
							<td>기간</td>
						</tr>
							<c:forEach var="coupon" items="${couponList}">
								<tr class="item">
									<td class="Modal_data data_coupon">${coupon.no}</td>
									<td class="Modal_data data_coupon">${coupon.regist}</td>
									<td class="Modal_data data_coupon">${coupon.name}</td>
									<td class="Modal_data data_coupon">${coupon.period} <span>일 까지</span></td>
								</tr>
							</c:forEach>
					</table>
					</c:if>
					</div>
				</div>
			</div>
		</div>
		<div class="Modal_column">
			<div class="Modal_reserve">
				<h2>예약내역</h2>
				<div class="Modal_row">
					<div class="Modal_items">
					<c:if test="${fn:length(reserveList) eq 0}">
					<h4>예약내역이 없습니다.</h4>
					</c:if>
					<c:if test="${fn:length(reserveList) ne 0 }">
					<table>
						<tr class="labels">
							<td>예약번호</td>
							<td>호텔번호</td>
							<td>호텔이름</td>
							<td>객실번호</td>
							<td>객실이름</td>
							<td>예약자이름</td>
							<td>예약자번호</td>
							<td>숙박 시작일</td>
							<td>숙박 종료일</td>
							<td>가격</td>
							<td>인원수</td>
							<td>추가요청사항</td>
							<td>방문방법</td>
							<td>옵션</td>
						</tr>
						<tr class="coupon_items">
							<c:forEach var="reserve" items="${reserveList}">
								<td class="Modal_data data_reserve">${reserve.no}</td>
								<td class="Modal_data data_reserve">${reserve.hotel_no}</td>
								<td class="Modal_data data_reserve">${reserve.hotel_name}</td>
								<td class="Modal_data data_reserve">${reserve.room_no}</td>
								<td class="Modal_data data_reserve">${reserve.room_name}</td>
								<td class="Modal_data data_reserve">${reserve.name}</td>
								<td class="Modal_data data_reserve">${reserve.phone}</td>
								<td class="Modal_data data_reserve">${reserve.rday}</td>
								<td class="Modal_data data_reserve">${reserve.dday}</td>
								<td class="Modal_data data_reserve">${reserve.price}</td>
								<td class="Modal_data data_reserve">${reserve.people}</td>
								<td class="Modal_data data_reserve">${reserve.add_req}</td>
								<td class="Modal_data data_reserve">${reserve.visit}</td>
								<td class="Modal_data data_reserve">${reserve.hotel_option}</td>
							</c:forEach>
						</tr>
					</table>
					</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	
			
			
			
			
			<%-- <c:if test="${fn:contains(log,'nv_') or fn:contains(log,'ka_')}">
				<button id="Delete_user_api">탈퇴하기</button>
			</c:if>
			<button id="Delete_user" style="display: none;">탈퇴하기</button> --%>
	</div>
</main>
