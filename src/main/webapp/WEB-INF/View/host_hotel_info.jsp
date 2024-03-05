<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<h2>호텔 정보</h2>
<main id="host_hotel_info_main">
<c:forEach var="h" items="${hotel }">
	<div class="host_hotel_info_content">
		<div class="host_hotel_info_img">
		<c:forEach var="url" items="${h.url }" varStatus="status">
			<c:if test="${status.first or (status.index % 2) eq 1 or status.last}"><div></c:if>
				 <div><img src="${ctx }/img/${url}"></div>
			<c:if test="${(status.index % 2) eq 0 or status.last}"></div></c:if>
		</c:forEach>
		</div>
		<div class="host_hotel_info_content_div">
			<div><span>호텔번호</span><span class="host_hotel_no">${h.no }</span></div>
			<div><span>호텔이름</span><span> ${h.name }</span></div>
			<div><span>성급</span><span> ${h.star }</span></div>
			<div><span>전화번호</span><span> ${h.tel }</span></div>
			<div><span>주소</span><span> ${h.address }</span></div>
			<div><span>체크 인 및 체크 아웃 시간</span><span> ${h.checkin } / ${h.checkout }</span></div>
			<div><span>계좌번호</span><span> ${h.account }</span></div>
		</div>
		<input type="radio" name="host_info_radio" id="host_info_radio">
	</div>
</c:forEach>
<div><button id="host_info_submit">호텔 수정 하기</button></div>
</main>
