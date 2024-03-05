<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_Profile_Main">
	<div class="left_item">
		<jsp:include page="Left_Item.jsp"></jsp:include>
	</div>
	<div class="content">
		<div class="section point_section">
			<div class="wrap point_wrap">
				<div class="point_header">
					<h2 class="title">포인트</h2>
				</div>
				<div class="point_body">
					<div class="point_box">
						<label>내 포인트</label>
						<p>${info.point }P</p>
						<div class="point_msg">
						<button class="text_btn" disabled>결제시 사용 가능한 포인트입니다.</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="section coupon_section">
			<div class="wrap coupon_wrap">
				<div class="coupon_header">
					<h2 class="title">보유 쿠폰</h2>
				</div>
				<div class="count">
					<span>${fn:length(list)}개</span>
					쿠폰
				</div>
				<div class="coupon_body">
					<c:if test="${fn:length(list) eq 0 }">
					<div class="notCouponMsg">보유중인 쿠폰이 없습니다.</div>
					</c:if>
					<c:if test="${fn:length(list) ne 0 }">
						<div class="items">
						<!-- 오늘 날짜 -->
						<c:set var="now" value="<%=new java.util.Date()%>"></c:set>
						<fmt:formatDate value="${nowDate}" pattern="yyyy-MM-dd(E)" />
						<!-- 리스트 출력 -->
						<c:forEach var="list" items="${list }">
						<!-- 쿠폰 발급일 -->
						<fmt:parseDate value="${list.regist }" var="regist" pattern="yyyy-MM-dd" />
						<fmt:formatDate value="${regist}" pattern="yyyy-MM-dd(E)" />
						<!-- 쿠폰 소모일 -->
						<fmt:parseDate value="${list.period }" var="period" pattern="yyyy-MM-dd" />
						<fmt:formatDate value="${period}" pattern="yyyy-MM-dd(E)" />
						<!-- 쿠폰 남은 기간 -->
						<c:set var="difference" value="${period.date - now.date}" />
						
						
							<div class="Coupon_Info_item">
								<c:if test="${list.dislate > 0 }">
									<div><span class="discount">${list.dislate }</span><span>% 할인</span></div>
									<div><span class="max">최대${list.disprice }원 할인</span></div>
								</c:if>
								<c:if test="${list.dislate == 0 }">
									<div><span class="discount">${list.disprice }</span><span>원 할인</span></div>
								</c:if>
								<div><span>${difference }일 남음</span><span>${regist} - ${period}</span></div>
								
								<div><span class="coupon_name">${list.name}</span></div>
								<input type="radio" name="Coupon_info_radio" id="reserve_info_radio" value="${list.no }">
							</div>
						</c:forEach>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<!-- <div class="cancle_reserve"><button id="Reserve_Info_submit">취소하기</button></div>  -->
	</div>
</main>
