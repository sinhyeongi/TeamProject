<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main class="main main_CS">
	<div class="container">
		<div class="section section_title">
			<h1 class="title">고객센터</h1>
			<p class="title_text">어려운 문제가 있으신가요?</p>
		</div>
		<div class="section section_callbox">
			<article class="callbox">
				<div>
					<button class="callbtn"><i class="fas fa-solid fa-phone fa-rotate-90"></i>1234-1234</button>
					<div class="callbox_text">
						<p>예약·취소 문의</p>
						<p>오전 9시 ~ 새벽 3시</p>
					</div>
				</div>
				<button class="askbtn"><i class="fas fa-solid fa-comment"></i>문의하기</button>
			</article>
		</div>
		<div class="section section_board"></div>
	</div>
	
</main>