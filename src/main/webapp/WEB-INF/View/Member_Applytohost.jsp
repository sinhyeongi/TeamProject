<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id="Member_Applytohost_Main">
	<h2 style="text-align: center;">호스트 신청</h2>
	<div>
		<div>아이디</div><div><input type="text" name="id" value="${vo.id }" readonly="readonly" required="required"></div>
		<div>호텔이름</div><div><input type="text" name="name" placeholder="호텔이름" required="required"></div>
		<div>호텔 주소</div>
		<div>
			<input class="addres_input" type="text" id="postcode" name="postcode" placeholder="우편번호" readonly><br>
			<input class="addres_input" type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
			<input class="addres_input" type="text" id="address" name="address" placeholder="주소" readonly>
			<input class="addres_input" type="text" id="detailAddress" name="detailAddress" placeholder="상세주소">
			<input class="addres_input" type="text" id="extraAddress" name="extraAddress" value="참고항목" readonly>
		</div>
		<div>호텔 전화번호</div><div><input type="tel" name="tel" placeholder="02-1234-1234" required="required"></div>
		<div>호텔 성급</div><div><input type="number" name="star" min="1" max="5" required="required"></div>
		<div>호텔 부대시설</div><div><textarea name="fac"></textarea></div>
		<div>호텔 체크인 시간</div><div><input type="time" name="checkin" required="required"></div>
		<div>호텔 체크 아웃 시간</div><div><input type="time" name="checkout" required="required"></div>
		<div>계좌번호</div><div><input type="text" name="account" required="required"></div>
		<div><button class="applytohost_submit">제출 하기</button></div>
	</div>
</main>