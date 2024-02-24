<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main class="reserve_main">
	<input type="hidden" value="300" name="price">
	<div>
		<div class="reserve_title">
			<a href="Main.do"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#333333" viewBox="0 0 20 20" data-v-d882d821=""><path fill="#333" d="M17.586 9v2h-12.2c.003.004.157.17.36.366.203.196 5.24 5.234 5.24 5.234l-1.4 1.4-6.572-6.567a2.027 2.027 0 0 1 0-2.866L9.586 2l1.4 1.4-5.24 5.246a8.33 8.33 0 0 0-.36.354h12.2Z"></path></svg></a>
			<span class="reserve_title">예약 확인 및 결제</span>
		</div>
		<form method="post" id="reserve_form">
			<h3>예약자 정보</h3>
			<span>예약자 이름</span>
			<div><input type="text" name="name" placeholder="홍길동"></div>
			<span>휴대전화 번호</span>
			<div><input type="tel" name="tel" placeholder="010-1234-5678"><input type="button" id="check_tel" value="전화번호 본인 인증"></div>
			<hr />
				<div id="reserve_img_div">
					<img src="http://placehold.it/150x150" alt="img">
				</div>
			<hr />
			<div>
				<h3 class="payment_title">결제 수단</h3>
				<input type="button" name="payment" value="결제하기">
			</div>
		</form>
	</div>
	<div>
	<h2>dsadsadsa</h2>
	</div>
</main>