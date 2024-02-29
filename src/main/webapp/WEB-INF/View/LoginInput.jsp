<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main id = Login_Input>
		<div class="id_Login">
			<div class="title">
				<h1>아이디로 시작하기</h1>
			</div>
			<form action="">
				<div class = "login_input">
					<div class="labeled_input_label">
						<label id="userId">아이디</label>
						<!-- <label id="userEmail">이메일</label> -->
						<div class="dot_badge"></div>
					</div>
					<div class="labeled_input_input">
						<div class="input-wrapper input_id_wrapper">
							<input class="input_id" placeholder="아이디를 입력하세요." name="id" id="input_id" type="text">
						<!-- 	<input placeholder="이메일을 입력하세요." name="email" id="input_email" type="email"> -->
						</div>
						<div class="errorMsg errorMsg_id"><span>아이디를 입력해주세요.</span></div>
					</div>
				</div>
				<!-- //ID Input -->
				
				<div class = "login_input">
					<div class="labeled_input_label">
						<label id="userId">비밀번호</label>
						<!-- <label id="userEmail">이메일</label> -->
						<div class="dot_badge"></div>
					</div>
					<div class="labeled_input_input">
						<div class="input-wrapper input_pw_wrapper">
							<input placeholder="비밀번호를 입력하세요." name="pw" id="input_pw" type="password">
						</div>
						<div class="errorMsg errorMsg_pw"><span>비밀번호를 입력해주세요.</span></div>
					</div>
				</div>
				<!-- //PW Input -->
				
				<!-- <div class = "login_option">
					<div class=actions>
					</div>
				</div> -->
				<!-- //아이디기억 및 로그인유지 와 비밀번호재설정 등 -->
				<button class= "button login_btn block" disabled>로그인</button>
				<!-- 로그인 버튼 submit -->
			</form>
			<!-- input from -->
			
			<div class=go_register>
				<a href="Member_Insert.do"><button class="btn register_btn">회원가입 버튼</button></a>
			</div>
			<!-- 회원가입 버튼 -->
			
		</div>
		<!-- //Id_Login -->
			
			
			
			
			
			
			
</main>
