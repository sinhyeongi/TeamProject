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
							<fmt:formatDate value="${regist}" pattern="yyyy.M.d (E)" var="Formmat_regist" />
							<!-- 쿠폰 소모일 -->
							<fmt:parseDate value="${list.period }" var="period" pattern="yyyy-MM-dd" />
							<fmt:formatDate value="${period}" pattern="yyyy.M.d (E)" var="Formmat_period" />
							<!-- 쿠폰 남은 기간 -->
							<fmt:parseNumber value="${regist.time / (1000*60*60*24) }" integerOnly="true" var="startDate"/>
							<fmt:parseNumber value="${period.time / (1000*60*60*24) }" integerOnly="true" var="endDate"/>
							<p>${endDate }</p>
							<p>${startDate }</p>
							<c:set var="remain" value="${endDate - startDate}" />
							
								<div class="Coupon_Info_item">
									<div class="section price_section">
										<c:if test="${list.dislate > 0 }">
											<div class="discount-amount"><span class="amount">${list.dislate }</span><span>% 할인</span></div>
											<div><span class="max">최대${list.disprice }원 할인</span></div>
										</c:if>
										<c:if test="${list.dislate == 0 }">
											<div class="discount-amount"><span class="amount">${list.disprice }</span><span>원 할인</span></div>
										</c:if>
										<div ><span class="remain-date">${remain }일 남음</span><span class="remain-detail">${Formmat_regist} - ${Formmat_period}</span></div>
									 </div>
									<div class="section info_section">
										<div><span class="coupon_name">${list.name}</span></div>
									</div>
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
