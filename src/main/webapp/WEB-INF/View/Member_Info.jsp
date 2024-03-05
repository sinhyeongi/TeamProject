<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_Profile_Main">
<input type="hidden" id="id" name="id" value="${log }">
	<div class="left_item">
		<jsp:include page="Left_Item.jsp"></jsp:include>
	</div>
	<div class="content">
		<h2>내 정보 관리</h2>
		<br/>
		<h3>회원 정보</h3>
		<div class="member_check"><span>가려진 정보 보기</span><input type="checkbox" id="member_info_toogle-slider"><label for="member_info_toogle-slider" id="member_info_toogle-slider-label">ON/OFF</label></div>
		<div id="member_info_content">
			<div>
				<div><span>닉네임</span><input type="text" name="nickname" id="nickname" value="${vo.nickname }" readonly="readonly" class="member_info_hidden"></div>
				<div><span>예약자 이름</span><input type="text" name="name" id="name" value="${vo.name }" readonly="readonly" class="member_info_hidden"></div>
			</div>
			<div>
				<div><span>휴대폰 번호</span><input type="text" name="phone" id="phone" value="${vo.phone }" readonly="readonly" class="member_info_hidden"></div>
				<div><span>생년월일</span><input type="text" name="birth" id="birth" value="${vo.birth }" readonly="readonly" class="member_info_hidden"></div>
			</div>
			<div>
				<div id="info_gender_div"><span id="gender_title">성별</span>
					<div>
					<input type="radio" name="gender" value="m" <c:if test="${vo.gender eq 'm' }">checked="checked"</c:if> onclick="return false"><span>남성</span>
					<input type="radio" name="gender" value="f" <c:if test="${vo.gender eq 'f' }">checked="checked"</c:if> onclick="return false"><span>여성</span>
					</div>
				</div>
			</div>
			<hr>
			<div>더 이상 Java 이용을 원하지 않으신가요?<span id="out_member">회원탈퇴</span></div>
		</div>
		
	</div>
</main>
