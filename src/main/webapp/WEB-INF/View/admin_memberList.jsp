<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main class="member_List">
	<div class="container member_list_container">
		<div class="section title_section">
			<h1>회원 목록</h1>
		</div>
		<div class="section serch_section">
			<form action="admin_memberList.do" method="get" class="searchForm">
				<div class="category">
				<input type="hidden" id="cate" value="${category }">
				<input type="hidden" id="levelValue" value="${levelValue }">
					<select id="category" name="category">
						<option value="id"<c:if test="${category eq null || category eq 'id' }"> selected</c:if>>아이디</option>
						<option value="name" <c:if test="${category eq 'name' }"> selected</c:if> >이름</option>
						<option value="level" <c:if test="${category eq 'level' }"> selected</c:if> >등급</option>
						<option value="nickname" <c:if test="${category eq 'nickname' }"> selected</c:if>>닉네임</option>
					</select>
				</div>
				<div class="searchValue">
					<input type="text" id="search" name="searchValue"/>
				</div>
					<button>검색</button>
			</form>
		</div>
		<div class="section label_section">
			<div class ="column">
				<div class="row">
				<div class="label label_no"><label>회원번호</label>	</div>
				</div>
				<div class="row">
				<div class="label label_nickname"><label>닉네임</label></div>
				</div>
				<div class="row">
				<div class="label label_id"><label>회원아이디</label></div>
				</div>
				<div class="row">
				<div class="label label_modal"><label>추가정보</label></div>
				</div>
			</div>
			<!-- //column -->
			
		</div>
		<div class="section data_section">
			<c:if test="${list eq null }">
				<div class="noList">회원정보가 없습니다.</div>
			</c:if>
			<c:if test="${list ne null }">
			<c:forEach var="vo" items="${list}">
			<div class ="column">
				<div class="row"><div class="data data_no">${vo.no}</div></div>
				<div class="row"><div class="data data_nickname">${vo.nickname}</div></div>
				<div class="row"><div class="data data_id">${vo.id}</div></div>
				<c:if test="${applyHost eq null}">
				<div class="row"><div class="data data_modal Modal_btn" onclick="modal_info(${vo.no},'Modal_memberInfo')">모달창으로 정보보기</div></div>
				</c:if>
				<c:if test="${applyHost ne null}">
				<div class="row"><div class="data data_modal Modal_btn" onclick="modal_applyHostInfo(${vo.no},'Modal_applyHostInfo')">신청 정보보기</div></div>
				</c:if>
				</div>
			</c:forEach>
			</c:if>
		
		</div>
		<!-- //data_section -->
		
	</div>
	<!-- //container -->
</main>