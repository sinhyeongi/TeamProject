<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
    
<main id="Main_msg">
	<div class="container">
		<div class="msgBox">
			<c:if test="${msg eq 'error'}">
				<div class="msg">
				처리중에 오류가 발생하였습니다.<br/>
				다시 시도해 주세요.
				</div>			
			</c:if>
			<c:if test="${msg eq 'successUpload'}">
				<div class="msg">게시글 업로드가 완료되었습니다.</div>			
			</c:if>
			<c:if test="${msg eq 'overLevel'}">
				<div class="msg">이미 신청중이거나 권한이 이미 있습니다.</div>			
			</c:if>
			<c:if test="${msg eq 'underLevel'}">
				<div class="msg">권한이 없습니다.</div>			
			</c:if>
			<c:if test="${msg eq 'apply'}">
				<div class="msg">신청이 완료되었습니다.</div>			
			</c:if>
			<c:if test="${msg eq 'logout'}">
				<div class="msg">로그아웃이 완료되었습니다.</div>			
			</c:if>
			<c:if test="${msg eq 'signUp'}">
				<div class="msg">
					<span class="nickname">${nickname }</span><span>님 회원가입을<br/>
					 진심으로 축하드립니다.</span>
				</div>			
			</c:if>
			<button class="btn" onclick="location.href='${ctx}/Main.do'">홈으로</button>
		</div>	
	</div>
</main>