<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<body>
<main class="Modal_main">
	<h2 class="title">회원 정보 입력</h2>
	<div class="Modal_content">
		<div>
			<label for="modal_id">아이디</label>
			<input type="text" name="modal_id" id="modal_id" readonly="readonly">
		</div>
		<div>
		<c:if test="${(fn:contains(log,'nv_')== false) and (fn:contains(log,'ka_') == false)}">
			<label for="modal_id">비밀번호</label>
			<input type="password" name="modal_pw" id="modal_pw">
		</c:if>
		</div>
		<div>
			<c:if test="${(fn:contains(log,'nv_') == false) and (fn:contains(log,'ka_') == false)}">
				<button id="modal_btn">인증하기</button>
			</c:if>
			<c:if test="${fn:contains(log,'nv_') or fn:contains(log,'ka_')}">
				<button id="Delete_user_api">탈퇴하기</button>
			</c:if>
			<button id="Delete_user" style="display: none;">탈퇴하기</button>
		</div>
	</div>
</main>
