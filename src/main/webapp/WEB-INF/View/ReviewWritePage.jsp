<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<input type="hidden" value="${ctx}" id="contextPath">
<main class="main reviewWrite_main">
	<div class="container">
		<section class="title_section">
			<h1 class="title">리뷰작성</h1>
		</section>
		<section class="form_section">
			<form action="ReviewUpload.do" method="POST">
			<input type="hidden" id="nickname" name="nickname" value="${memberVO.nickname }">
			<input type="hidden" id="hotel_no" name="hotel_no" value="${hotelVO.no }">
			<input type="hidden" id="room_no" name="room_no" value="${roomVO.no }">
			<input type="hidden" id="res_no" name="res_no" value="${reserveVO.no }">
				<table class="reviewTable">
					<tr>
						<td>HOTEL :</td>
						<td>${hotelVO.name }</td>
					</tr>
					<tr>
						<td>ROOM :</td>
						<td>${roomVO.name }</td>
					</tr>
					<tr>
						<td>기간 :</td>
						<td>${reserveVO.rday } ~ ${reserveVO.dday }</td>
					</tr>
					<tr>
						<td>별점 :</td>
						<td>
						<select id="star_point" name="star_point" required>
						<option value="" selected disabled>별점주기</option>
						<c:forEach var="i" begin="0" end="4" step="1">
							<option value="${5-i}">${5-i}</option>
						</c:forEach>
						</select>
						</td>
					</tr>
					<tr class="imgRow">
						<td>사진:</td>
						<td class="imgs"></td>
					</tr>
					<tr>
						<td>내용 :</td>
						<td><textarea class="content" name="content" rows="9"></textarea></td>
					</tr>
					<tr align="center">
						<td colspan="2">
						<label for="file" class="uploadBtn">사진올리기</label>
						<button class="submit_btn">리뷰작성</button>
						</td>
					</tr>
				</table>
			</form>
			<form method="post" enctype="multipart/form-data" id="ImgUpload_form">
    			<input type="hidden" name="no" value="${reserveVO.no }">
    			<input type="hidden" name="uploader" value="rv">
    			<input type="file" name="file" id="file" accept="image/*">
    		</form>
		</section>
	</div>
</main>