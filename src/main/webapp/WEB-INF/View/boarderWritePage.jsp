<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main id="BoarderWriteMain">
	<div class="container BoarderWrite_container">
		<form id="BoarderForm" action="BoarderUpload.do" method="POST">
			<input type="hidden" name="type" id="type" value="board">
			<table class="BoarderWrite_table">
				<tr>
					<th>카테고리</th>
					<td>
				  <select id="category" name="category" onchange="updateSubcategories()" required>
			        <option value="" disabled selected>카테고리</option>
			        <option value="notice">공지사항</option>
			        <option value="infomation">안내사항</option>
			        <option value="qa">문의</option>
			        <option value="event" disabled>이벤트</option>
			      </select>
				  <select id="subcategory" name="subcategory" required>
			        <option value="" disabled selected>카테고리를 먼저 선택해주세요</option>
			      </select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" id="title" name="title" style="width:100%; height:30px;" required></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="15" id="content" name="content" style="width:100%;resize:none;" required></textarea></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<button class="btn submit_btn">글쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</main>
<script>
	function updateSubcategories() {
	    const category = document.getElementById("category").value;
	    const subcategorySelect = document.getElementById("subcategory");
	
	    // 옵션 초기화
	    subcategorySelect.innerHTML = "";
	
	    // 대분류에 맞는 옵션 추가
	    if (category === "notice") {
	        addOption(subcategorySelect, "공지");
	        addOption(subcategorySelect, "안내");
	        addOption(subcategorySelect, "발표");
	    } else if (category === "infomation") {
	        addOption(subcategorySelect, "결제/영수증");
	        addOption(subcategorySelect, "예약관련");
	        addOption(subcategorySelect, "기타");
	    } else if (category === "qa"){
	    	addOption(subcategorySelect, "예약");
	    	addOption(subcategorySelect, "결제");
	    	addOption(subcategorySelect, "쿠폰");
	    	addOption(subcategorySelect, "포인트");
	    }
	}
	
	function addOption(selectElement, optionText) {
	    const option = document.createElement("option");
	    option.text = optionText;
	    option.value = optionText.toLowerCase().replace(/\s/g, '_');
	    selectElement.add(option);
	}
    </script>