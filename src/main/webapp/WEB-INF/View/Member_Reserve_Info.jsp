<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<main id="Member_Reserve_Info_Main">
	<div class="left_item">
		<jsp:include page="Left_Item.jsp"></jsp:include>
	</div>
	<div class="content">
		<h2 class="title">예약 내역</h2>
		<c:forEach var="list" items="${list }">
			<div class="Reserve_Info_item">${list }</div>
		</c:forEach>
			
	</div>
</main>

<%-- <table class="content_table">
			<c:forEach var="vo" items="${list }">
			<tr>
				<td>${vo }</td>
			</tr>
			</c:forEach>
</table> --%>