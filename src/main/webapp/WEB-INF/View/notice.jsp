<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main notice_main">
<%@ include file="./notice_nav.jsp" %>
	<div class="container notice_container">
		<section class="title notice_title">
			<h1>공지사항</h1>
		</section>
		<section class="notice_contents">
			<c:forEach var="vo" items="${list }">
			<a href="DetailNotice.do?no=${vo.no}">
			<div role="link" class=notice_items>
				<div class="notice_item">
				<input type="hidden" id="board_No" value="${vo.no }"/> 
					<label class="item_label_tag">
						<c:if test="${vo.category eq 'notice_점검' }">점검</c:if>
						<c:if test="${vo.category eq 'notice_공지' }">공지</c:if>
						<c:if test="${vo.category eq 'notice_안내' }">안내</c:if>
						<c:if test="${vo.category eq 'notice_발표' }">발표</c:if>
					</label>
					<div class="item_title">
						${vo.title }
					</div>
					<div class="notice_regist">
						2024.03.09
					<%-- ${vo.regist } --%>
					</div>
				</div>
			</div>
			</a>
			</c:forEach>
		</section>
	</div>
</main>
