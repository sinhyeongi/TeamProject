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
			</div>
		</div>
		<div class="section data_section">
			<c:forEach var="vo" items="${list}">
			<div class ="column">
				<div class="row"><div class="data data_no">${vo.no}</div></div>
				<div class="row"><div class="data data_nickname">${vo.nickname}</div></div>
				<div class="row"><div class="data data_id">${vo.id}</div></div>
				<div class="row"><div class="data data_modal Modal_btn" onclick="modal_info(${vo.no},'Modal_memberInfo')">모달창으로 정보보기</div></div>
				</div>
			<!-- //column -->
		
			</c:forEach>
		</div>
		<!-- //data_section -->
		
	</div>
	<!-- //container -->
</main>