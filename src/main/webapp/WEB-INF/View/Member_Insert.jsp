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
		<div><input type="email" id="email" name="email" value="${vo.email }" <c:if test="${vo.email ne null }">readonly="readonly" class="NoInput"</c:if>></div> 
	</div>
	<div>
		<div>생년월일</div>
		<div></div> 
	</div>
	<div>
		<div>성별</div> 
	</div>
	<div>
		휴대폰번호 : 
	</div>
	<div>
		주소 : 
	</div>
	<div>
		닉네임 : 
	</div>
	<div>
		<input type="button" value="회원가입 하기">
	</div>
</form>
</main>