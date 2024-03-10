<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main class="main detailNotice_main">
	<div class="container detailNotice_container">
		<div class="wrap detailNotice_wrap">
		<label class="item_label_tag">
			<c:if test="${vo.category eq 'notice_점검' }">점검</c:if>
			<c:if test="${vo.category eq 'notice_공지' }">공지</c:if>
			<c:if test="${vo.category eq 'notice_안내' }">안내</c:if>
			<c:if test="${vo.category eq 'notice_발표' }">발표</c:if>
		</label>
		<section class="section title_section">
			<div class="detailNotice_title">
			${vo.title}
			</div>
			<div class="detailNotice_regist">
			2024.03.10
			</div>
		</section>
		<section class="section content_section">
			${vo.content}
		</section>
		</div>	
	
	</div>

</main>
