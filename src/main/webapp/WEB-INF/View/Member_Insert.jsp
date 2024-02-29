<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<main id="Member_Insert_Main">
	${vo}
	<form action="${ctx}/MemberInserData.do" method="post" id="Member_Insert_Form">
	<!-- 아이디 -->
		<!-- 아이디가 있는경우 -->
		<c:if test="${vo.id ne null }">
		<input type="hidden" name="id" value ="${vo.id}"/>
		</c:if>
		<!-- 아이디가 없는경우 -->
		<c:if test="${vo.id eq null }">
		<div>
			<div>아이디</div>
			<div id="input_id_box"><input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required></div>
		</div>
		<div id="errorMsg" class="errorMsg_id">아이디를 입력해주세요</div>
		</c:if>
	<!-- 비밀번호 -->
		<!-- 멤버객체가 없는경우 -->
		<c:if test="${vo eq null }">
		<div id = "pw_box">
			<div>비밀번호</div>
			<div id="input_pw_box"><input type="password" id="pw" name="pw" required></div> 
		</div>
		<div id="errorMsg" class="errorMsg_pw">비밀번호를 입력해주세요</div> 
		</c:if>
	<!-- 이메일 -->
		<div>
			<div>이메일</div>
			<div id="input_email_box"><input type="email" id="email" name="email" value="${vo.email }" placeholder="abc@abcd.com" <c:if test="${vo.email ne null }">value="${vo.email }" readonly="readonly" class="NoInput"</c:if>></div>
		</div>
		<div id="errorMsg" class="errorMsg_email">이메일을 입력해주세요</div> 
	<!-- 이름 -->
		<c:if test="${vo.name ne null }">
		<input type="hidden" name="name" value ="${vo.name}"/>
		</c:if>
		<c:if test="${vo.name eq null }">
		<div>
			<div>이름</div>
			<div id="input_name_box"><input type="text" id="name" name="name" placeholder="이름을 입력하세요" required></div>
		</div>
		<div id="errorMsg" class="errorMsg_name">이름을 입력해주세요</div>
		</c:if>
		
	<!-- 생년월일 -->
		<c:if test="${vo.birth ne null }">
		<input type="hidden" name="birth" value ="${vo.birth}"/>
		</c:if>
		<c:if test="${vo.birth eq null }">
		<div>
		<div>생년월일</div>
			<div id="input_birth_box" class="input_box select">
				<select class="birth_box birth_box_year" id="birth_year" name="birth-year">
					<option disabled selected>출생 연도</option>
				</select>
				<select class="birth_box birth_box_month" id="birth_month" name="birth-month" >
					<option disabled selected>월</option>
				</select>
				<select class="birth_box birth_box_day" id="birth_day" name="birth-day">
					<option disabled selected>일</option>
				</select>
				<input type="hidden" name="birth"/>
			</div> 
		</div>
		<div id="errorMsg" class="errorMsg_birth">생년월일을 선택해주세요</div> 
		</c:if>
	
	<!-- 성별 -->
		<c:if test="${vo.gender ne null }">
		<input type="hidden" name="gender" value="${vo.gender}">
		</c:if>
		<c:if test="${vo.gender eq null }">
		<div>
			<div>성별</div>
			<div id="input_gender_box" class="genderbox">
			<label class="gender_label" for="genderM">남자</label>
			<input type="radio" name="gender" id="genderM gender_button" value="M" checked/>
			<label class="gender_label" for="genderF">여자</label>
			<input type="radio" name="gender" id="genderF gender_button" value="F"/>
			</div>
		</div>
		</c:if>
	
	<!-- 연락처 -->
		<c:if test="${vo.phone ne null }">
		<input type="hidden" name="phone" value="${vo.phone}">
		</c:if>
		<c:if test="${vo.phone eq null }">
		<div>
			<div>연락처</div> 
			<div id="input_phone_box"><input type="text" class="input_tel input_box" id="phone" name="phone" placeholder="전화번호를 입력하세요"></div>
		</div>
		<div id="errorMsg" class="errorMsg_phone">연락처를 입력해주세요</div> 
		</c:if>
	
	<!-- 주소 -->
		<c:if test="${vo.address ne null }">
		<input type="hidden" name="address" value="${vo.address}">
		</c:if>
		<c:if test="${vo.address eq null }">
		<div>
			<div>주소</div>
			<div id=address_box>
				<input type="text" id="postcode" name="postcode" placeholder="우편번호" readonly><br>
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
				<input type="text" id="address" name="address" placeholder="주소" readonly>
				<input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소">
				<input type="text" id="extraAddress" name="extraAddress" value="참고항목" readonly>
			</div>
		</div>
		<div id="errorMsg" class="errorMsg_address">주소를 입력해주세요</div> 
		</c:if>
		
	<!-- 닉네임 -->
		<div>
			<div>닉네임</div>
			<div id="input_nickname_box"><input type="text" id="nickname" name="nickname" value="${vo.nickname }" placeholder="닉네임을 입력하세요"/></div>
		</div>
		<div id="errorMsg" class="errorMsg_nickname">닉네임을 입력해주세요</div> 
		
	<!-- 중복체크 -->
		<div class="btn" onclick="DuplicatedCheck(nickname)">중복체크</div>
		<div id="errorMsg" class="errorMsg_duplicated">완료되었습니다.</div> 
		<div></div>
		
	<!-- 서밋 --> 
		<div>
			<input type="button" onclick="insert(form)" class="btn" value="회원가입 하기">
		</div>
	</form>
</main>