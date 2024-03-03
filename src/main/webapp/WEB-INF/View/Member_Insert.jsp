<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_Insert_Main">
	<div class="member_insert">
		<div class="title">
			<h1>회원가입</h1>
		</div>
		<form action="${ctx}/MemberInserData.do" method="post" id="Member_Insert_Form">
		<!-- 아이디 -->
			<!-- 아이디가 있는경우 -->
			<c:if test="${vo.id ne null }">
			<input type="hidden" name="id" value ="${vo.id}"/>
			</c:if>
			<!-- 아이디가 없는경우 -->
			<c:if test="${vo.id eq null }">
			<div class="box id_box">
				<label class="label_id">아이디</label>
				<div class="id container">
					<div id="input_id_box" class="input_wrapper input_box">
						<input class="input" type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
					</div>
					<div class="duplicated_box">
						<div class="btn" onclick="IdDuplicatedCheck(id)">중복체크</div>
					</div>
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_id">아이디를 입력해주세요</div>
			</c:if>
		<!-- 비밀번호 -->
			<!-- 멤버객체가 없는경우 -->
			<c:if test="${vo eq null }">
			<div class="box pw_box">
				<label class="label_pw">비밀번호</label>
				<div id="input_pw_box" class="input_wrapper">
					<input class="input" type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" required>
				</div> 
			</div>
			<div id="errorMsg" class="errorMsg_pw">비밀번호를 입력해주세요</div> 
			</c:if>
		<!-- 이메일 -->
			<div class="box email_box">
				<label class="label_email">이메일</label>
				<div id="input_email_box" class="input_wrapper">
					<input class="input" type="email" id="email" name="email" value="${vo.email }" placeholder="abc@abcd.com" <c:if test="${vo.email ne null }">value="${vo.email }" readonly="readonly" class="NoInput"</c:if>>
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_email">이메일형식에 맞게 입력해주세요</div> 
		<!-- 이름 -->
			<c:if test="${vo.name ne null }">
			<input type="hidden" name="name" value ="${vo.name}"/>
			</c:if>
			<c:if test="${vo.name eq null }">
			<div class="box name_box">
				<label class="label_name">이름</label>
				<div id="input_name_box" class="input_wrapper">
					<input class="input" type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_name">이름을 입력해주세요</div>
			</c:if>
			
		<!-- 생년월일 -->
			<c:if test="${vo.birth ne null }">
			<input type="hidden" name="birth" value ="${vo.birth}"/>
			</c:if>
			<c:if test="${vo.birth eq null }">
			<div class="box birth_box">
				<label class="label_birth">생년월일</label>
				<div class="birth container">
					<div id="input_birth_box" class="input_wrapper select">
						<select class="select select_birth birth_box_year" id="birth_year" name="birth-year">
							<option disabled selected>출생 연도</option>
						</select>
					</div>
					<div id="input_birth_box" class="input_wrapper select">
						<select class="select select_birth birth_box_month" id="birth_month" name="birth-month" >
							<option disabled selected>월</option>
						</select>
					</div>
					<div id="input_birth_box" class="input_wrapper select">
						<select class="select select_birth birth_box_day" id="birth_day" name="birth-day">
							<option disabled selected>일</option>
						</select>
						<input type="hidden" name="birth"/>
					</div> 
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_birth">생년월일을 선택해주세요</div> 
			</c:if>
		
		<!-- 성별 -->
			<c:if test="${vo.gender ne null }">
			<input type="hidden" name="gender" value="${vo.gender}">
			</c:if>
			<c:if test="${vo.gender eq null }">
			<div class="box gender_box">
				<label class="label_gender">성별</label>
				<div id="input_gender_box" class="genderbox input_wrapper">
					<div class="radio">
						<label class="gender_label" for="genderM">남자</label>
						<input type="radio" name="gender" id="genderM" value="M" checked/>
					</div>
					<div class="radio">
						<label class="gender_label" for="genderF">여자</label>
						<input type="radio" name="gender" id="genderF" value="F"/>
					</div>
				</div>
			</div>
			</c:if>
		
		<!-- 연락처 -->
			<c:if test="${vo.phone ne null }">
			<input type="hidden" name="phone" value="${vo.phone}">
			</c:if>
			<c:if test="${vo.phone eq null }">
			<div class="box phone_box">
				<div class="label">연락처</div> 
				<div id="input_phone_box" class="input_wrapper">
					<input type="text" class="input_tel input" id="phone" name="phone" placeholder="전화번호를 입력하세요">
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_phone">연락처를 입력해주세요</div> 
			</c:if>
		
		<!-- 주소 -->
			<c:if test="${vo.address ne null }">
			<input type="hidden" name="address" value="${vo.address}">
			</c:if>
			<c:if test="${vo.address eq null }">
			<div class="box address_box">
				<label class="label_address">주소</label>
				<div id=address_box>
					<input class="addres_input" type="text" id="postcode" name="postcode" placeholder="우편번호" readonly><br>
					<input class="addres_input" type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
					<input class="addres_input" type="text" id="address" name="address" placeholder="주소" readonly>
					<input class="addres_input" type="text" id="detailAddress" name="detailAddress" placeholder="상세주소">
					<input class="addres_input" type="text" id="extraAddress" name="extraAddress" value="참고항목" readonly>
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_address">주소를 입력해주세요</div> 
			</c:if>
			
		<!-- 닉네임 -->
			<div class="box nickname_box">
				<label class="label_nickname">닉네임</label>
				<div class = "nickname container">
					<div id="input_nickname_box" class="input_wrapper input_box">
						<input class="input" type="text" id="nickname" name="nickname" value="${vo.nickname }" placeholder="닉네임을 입력하세요"/>
					</div>
					<div class="duplicated_box">
						<div class="btn" onclick="NicknameDuplicatedCheck(nickname)">중복체크</div>
					</div>
				</div>
			</div>
			<div id="errorMsg" class="errorMsg_nickname">닉네임을 입력해주세요</div> 
		<!-- 서밋 --> 
			<div class="box submit_box">
				<input type="button" onclick="insert(form)" class="submit_btn" value="회원가입 하기">
			</div>
		</form>
	</div>
</main>