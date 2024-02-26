<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">
	<main class="content">
		<div class="login">
			<div class="login_logo">
			<img width="150px" height="150px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160402_19%2Fmaddara_1459606960178nrrdB_JPEG%2FUntitled-1.jpg&type=sc960_832">
			</div>
			<div class="login_title">
				<span class="strikethrough"></span>
				<span class="caption">로그인/회원가입</span>
				<!-- <hr class="strikethrough" /> -->
			</div>
			<div class="login_btn_grop">
				<!-- <form> -->
					<button onclick="kakaoLogin()" class="btn kakao_login">
						<div class="btn_content">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="#3C1E1E" viewBox="0 0 21 21">
							<path fill="current" d="M10.5 3.217c4.514 0 8 2.708 8 6.004 0 3.758-4.045 6.184-8 5.892-1.321-.093-1.707-.17-2.101-.23-1.425.814-2.728 2.344-3.232 2.334-.325-.19.811-2.896.533-3.114-.347-.244-3.157-1.329-3.2-4.958 0-3.199 3.486-5.928 8-5.928Z"></path>
							</svg>
							카카오로 시작하기
						</div>	
					</button>
				<!-- </form> -->
				<!-- <form> -->
				<div id ="naver_id_login">네이버 로그인 하기</div>
					
				<!-- </form> -->
				<form>
					<button type="submit" class="btn google_login">
						<div class="btn_content">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="none" viewBox="0 0 21 21">
							<path fill="#4285F4" d="M18.18 10.398c0-.567-.05-1.113-.145-1.636H10.5v3.094h4.306a3.68 3.68 0 0 1-1.597 2.415v2.007h2.586c1.512-1.393 2.385-3.443 2.385-5.88Z"></path>
							<path fill="#34A853" d="M10.5 18.216c2.16 0 3.97-.716 5.294-1.938l-2.585-2.007c-.717.48-1.633.763-2.71.763-2.083 0-3.847-1.407-4.476-3.298H3.351v2.073a7.997 7.997 0 0 0 7.149 4.407Z"></path>
							<path fill="#FBBC05" d="M6.024 11.738c-.16-.48-.251-.993-.251-1.52 0-.528.09-1.04.25-1.52V6.625H3.352a7.997 7.997 0 0 0-.851 3.593c0 1.29.31 2.512.85 3.592l2.674-2.072Z"></path>
							<path fill="#EA4335" d="M10.5 5.399c1.174 0 2.229.403 3.058 1.196L15.852 4.3c-1.385-1.29-3.196-2.083-5.352-2.083a7.997 7.997 0 0 0-7.15 4.407l2.673 2.073c.63-1.891 2.393-3.298 4.477-3.298Z"></path>
							</svg>
							구글로 시작하기
						</div>	
					</button>
				</form>
				<a href="LoginInput.do" class="btn java_login">
					<div class="btn_content">
						<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="#3C1E1E" viewBox="0 0 21 21">
						<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2" />
						<circle cx="12" cy="7" r="4" />
						</svg>
						아이디로 시작하기
					</div>	
				</a>
			</div>
				<div class=b2b_login>
					<a href="#none">
						<div class="b2b_text_button">
							비지니스 로그인/회원가입
						</div>
					</a>
				</div>
		</div>
	</main>
</div>
