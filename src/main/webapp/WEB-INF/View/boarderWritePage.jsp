<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main id="BoarderWriteMain">
	<div class="container BoarderWrite_container">
		<form id="BoarderForm" action="BoarderWrite.do" method="POST">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" id="title" name="title"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><input type="text" id="content" name="content"></td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td>
					<c:if test="${type eq 'notice' }">
					<select id="category" name="category">
				        <option value="" disabled>카테고리</option>
				        <option value="notice">공지사항</option>
				        <option value="event">이벤트</option>
				        <option value="infomation">안내사항</option>
				    </select>
				    </c:if>
					<c:if test="${type eq 'qa' }">
					<select id="category" name="category">
				        <option value="" disabled>카테고리</option>
				        <option value="payment">결제/영수증</option>
				        <option value="reserve">예약관련</option>
				        <option value="etc">기타</option>
				        <!-- <option value="etc">기타</option>
				        <option value="etc">기타</option>
				        <option value="etc">기타</option> -->
				    </select>
				    </c:if>
					</td>
				</tr>
			</table>
		</form>
	</div>
</main>