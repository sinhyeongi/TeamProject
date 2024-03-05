<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main class="member_List">
	<div class="container member_list_container">
		<div class="section title_section">
			<h1>회원 목록</h1>
		</div>
		<div class="section label_section">
			<div class ="column">
				<div class="row">
				<div class="label label_no"><label>회원번호</label>	</div>
				</div>
				<div class="row">
				<div class="label label_nickname"><label>닉네임</label></div>
				</div>
				<div class="row">
				<div class="label label_id"><label>회원아이디</label></div>
				</div>
				<div class="row">
				<div class="label label_modal"><label>추가정보</label></div>
				</div>
	<!-- 			<div class="row">
				<div class="label label_pw"><label>회원비밀번호</label></div>
				</div>
				<div class="row">
				<div class="label label_email"><label>회원이메일</label></div>
				</div>
				<div class="row">
				<div class="label label_name"><label>회원이름</label></div>
				</div>
				<div class="row">
				<div class="label label_birth"><label>생년월일</label></div>
				</div>
				<div class="row">
				<div class="label label_gender"><label>성별</label></div>	
				</div>
				<div class="row">
				<div class="label label_phone"><label>연락처</label></div>
				</div>
				<div class="row">
				<div class="label label_address"><label>주소</label></div>
				</div>
				<div class="row">
				<div class="label label_regist"><label>가입일</label></div>
				</div>
				<div class="row">
				<div class="label label_info"><label>추가 정보</label></div>
				</div>
				<div class="row">
				<div class="label label_coupon"><label>보유쿠폰</label></div>
				</div>
				<div class="row">
				<div class="label label_reserve"><label>예약내역</label></div>
				</div> -->
			</div>
		</div>
		<div class="section data_section">
			<c:forEach var="vo" items="${list}">
			<div class ="column">
				<div class="row"><div class="data data_no">${vo.no}</div></div>
				<div class="row"><div class="data data_nickname">${vo.nickname}</div></div>
				<div class="row"><div class="data data_id">${vo.id}</div></div>
				<div class="row"><div class="data data_modal Modal_btn" onclick="modal_info(${vo.no},'Modal_memberInfo')">모달창으로 정보보기</div></div>
<%-- 				<div class="row"><div class="data data_pw">${vo.pw}</div></div>
				<div class="row"><div class="data data_email">${vo.email}</div></div>
				<div class="row"><div class="data data_name">${vo.name}</div></div>
				<div class="row"><div class="data data_birth">${vo.birth}</div></div>
				<div class="row"><div class="data data_gender">${vo.gender}</div></div>
				<div class="row"><div class="data data_phone">${vo.phone}</div></div>
				<div class="row"><div class="data data_address">${vo.address}</div></div>
				<div class="row"><div class="data data_regist">${vo.regist}</div></div>
				<div class="row"><div class="data data_info">모달창으로보기</div><!-- 모달창으로 보이기 --></div>
				<div class="row"><div class="data data_coupon">모달창으로보기</div><!-- 모달창으로 보이기 --></div>
				<div class="row"><div class="data data_reserve">모달창으로보기</div><!-- 모달창으로 보이기 --></div>
				 --%>
				</div>
			<!-- //column -->
		
			</c:forEach>
		</div>
		<!-- //data_section -->
		
	</div>
	<!-- //container -->
</main>