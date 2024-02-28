<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_info_Main">
<input type="hidden" id="id" name="id" value="${log }">
	<div class="left_item">
	</div>
	<div class="content">
		<h2>내 정보 관리</h2>
		<br/>
		<h3>회원 정보</h3>
		<div class="member_check">정보보기</div>
		<div id="member_info_content">
			<div>
				<div><span>닉네임</span><input type="text" name="nickname" id="nickname"></div>
				<div><span>예약자 이름</span><input type="text" name="name" id="name"></div>
			</div>
			<div>
				<div><span>휴대폰 번호</span><input type="text" name="phone" id="phone"></div>
				<div><span>생년월일</span><input type="text" name="birth" id="birth"></div>
			</div>
			<div>
				<div><span>성별</span><input type="text" name="gender" id="gender"></div>
			</div>
			<hr>
			<div>더 이상 Java 이용을 원하지 않으신가요?<span id="out_member">회원탈퇴</span></div>
		</div>
		
	</div>
</main>