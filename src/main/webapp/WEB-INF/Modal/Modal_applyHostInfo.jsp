<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main id="ModalApplyHostInfoMain">
	<div class="container ModalApplyHostInfoMain_container">
		<section class="section title_section">
			<div>
				<h3 class="subject">신청자 정보</h3>
			</div>
		</section>
		<section class="section member_section">
			<table class="table applyHost_Member_Table">
				<tr>
					<th>아이디</th>
					<td>${mVO.id }</td>
					<th>이름</th>
					<td>${mVO.name}</td>
					<th>이메일</th>
					<td>${mVO.email }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${mVO.phone}</td>
					<th>주소</th>
					<td>${mVO.address}</td>
					<th>가입날짜</th>
					<td>${mVO.regist}</td>
				</tr>
			</table>
		</section>
		<section class="section hotel_section">
			<h3 class="subject">호텔 정보</h3>
			<table class="table applyHost_Hotel_Table">
				<tr>
					<th>이름</th>
					<td>${hVO.name}</td>
					<th>성급</th>
					<td>${hVO.star}</td>
					<th>연락처</th>
					<td>${hVO.tel}</td>
					<th>주소</th>
					<td>${hVO.address}</td>
				</tr>
				<tr>
					<th>check-in</th>
					<td>${hVO.checkin}</td>
					<th>check-out</th>
					<td>${hVO.checkout}</td>
					<th>계좌번호</th>
					<td>${hVO.account}</td>
					<th class="border_none"></th>
					<td></td>
				</tr>
				<tr>
					<th>부대시설</th>
					<c:if test="${hVO.fac eq null}">
					<td>입력정보없음</td>
					</c:if>
					<c:if test="${hVO.fac ne ''}">
					<td>${hVO.fac }</td>
					</c:if>
				</tr>
			</table>
		</section>
		<section class="section btn_section">
			<input type="hidden" id="hostId" value="${mVO.id}"/>
			<button class="btn_ahm accept" onclick="applyHost('accept',hostId.value)">수락</button>
			<button class="btn_ahm decline" onclick="applyHost('decline',hostId.value)">거절</button>
		</section>
	</div>
</main>
