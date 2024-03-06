<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<div class="container">
	<main class="content">
		<div class="login">
			<div class="login_logo">
				<img width="150px" height="150px" src="${ctx}/img/Main_logo.jpeg">
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
				<!-- 카카오 //form -->
				<div id ="naver_id_login">
					네이버 로그인 하기
				</div>
				<!-- 네이버 //div -->
				
				<button onclick="location.href='http://localhost:8080/TeamProject/LoginInput.do'" class="btn java_login">
					<div class="btn_content">
						<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="#3C1E1E" viewBox="0 0 21 21">
						<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2" />
						<circle cx="12" cy="7" r="4" />
						</svg>
						아이디로 시작하기
					</div>	
				</button>
				<!-- 아이디 //a -->
				
			</div>
		<!-- //로그인 버튼 그룹 -->
			
				<!-- <div class=b2b_login>
					<a href="#none">
						<div class="b2b_text_button">
							비지니스 로그인/회원가입
						</div>
					</a>
				</div> -->
		</div>
		<!-- //login -->
	</main>
</div>
