<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_Insert_Main">
${vo}
<!--  kakao 닉네임 / 아이디 -->
<form method="post" id="Member_Insert_Form">
	<div>
		<div>아이디</div>
		<div><input type="text" id="id" name="id" value="${vo.id }" <c:if test="${vo.id ne null }">readonly="readonly" class="NoInput"</c:if>></div>
	</div>
	<c:if test="${vo eq null }">
	<div>
		<div>비밀번호</div>
		<div><input type="password" id="pw" name="pw"></div> 
	</div>
	</c:if>
	<div>
		<div>이메일</div>
		<div><input type="email" id="email" name="email" value="${vo.email }" placeholder="abc@abcd.com" <c:if test="${vo.email ne null }">value="${vo.email }" readonly="readonly" class="NoInput"</c:if>></div> 
	</div>
	<c:if test="${vo.birth eq null }">
	<div>
	<div>생년월일</div>
		<div class = "input_box select">
			<select class="birth_box birth_box_year" id="birth-year" name="birth-year" value="${vo.birth}" >
				<option disabled selected>출생 연도</option>
			</select>
			<select class="birth_box birth_box_month" id="birth-month" name="birth-month" value="${vo.birth}" <c:if test="${vo.birth ne null }">readonly="readonly" class="NoInput"</c:if>>
				<option disabled selected>월</option>
			</select>
			<select class="birth_box birth_box_day" id="birth-day" name="birth-day" value="${vo.birth}" <c:if test="${vo.birth ne null }">readonly="readonly" class="NoInput"</c:if>>
				<option disabled selected>일</option>
			</select>
		</div> 
	</div>
	</c:if>
	<c:if test="${vo.gender eq null }">
	<div>
		<div>성별</div>
		<div></div>
	</div>
	</c:if>
	<div>
		<div>휴대폰번호</div> 
		<div></div>
	</div>
	<div>
		<div>주소</div> 
		<div></div>
	</div>
	<div>
		<div>닉네임</div>
		<div></div> 
	</div>
	<div>
		<input type="button" value="회원가입 하기">
	</div>
</form>
</main>