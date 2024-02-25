<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">
<html>

<head>

<meta charset="UTF-8">
<title>${title }</title>
	<!-- jquert  --> 
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- flatpickr js import	 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<!-- Login css -->
<c:if test="${page eq 'Login.jsp' }">
<link rel="stylesheet" type="text/css" href="${ctx}/Css/Login.css?32dsd">
</c:if>

<!-- Login js -->
<c:if test="${page eq 'Login.jsp' }">
<!-- kakao Login sdk  -->
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js"
  integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
  <!--  Naver Login -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script>
  Kakao.init('c16bc220b30ade93a139e3d168dc5331'); // 사용하려는 앱의 JavaScript 키 입력
</script>
<script type="text/javascript" defer src="${ctx}/Js/Login.js?dsa2"></script>
</c:if>
	<!--  Js import -->
	<script defer="defer" src="${ctx }/Js/header.js?4s"></script>
	<script defer="defer" src="${ctx }/Js/footer.js?dsa"></script>
	<c:if test="${page eq 'Main.jsp' }">
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script defer="defer" src="${ctx }/Js/Main.js?sa"></script>
	</c:if>
	<c:if test="${page eq 'reserve.jsp'}">
		<!-- iamport.payment.js -->
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
		<script defer="defer" src="${ctx }/Js/reserve.js?ds3233dsa"></script>
	</c:if>
<!--  css import -->
	<link rel="stylesheet" href="${ctx}/Css/header.css?dd34433" type="text/css">
	<link rel="stylesheet" href="${ctx}/Css/footer.css?dsdsd32" type="text/css">
	<c:if test="${page eq 'reserve.jsp'}">
		<link rel="stylesheet" href="${ctx}/Css/reserve.css?dsd3343a" type="text/css">
	</c:if>
	<c:if test="${page eq 'Main.jsp' }">
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
	</c:if>
	<link rel="stylesheet" href="${ctx}/Css/main.css?dsdsd3332" type="text/css">
</head>
<body>
  <header>
    <nav>
      <div class="header_logo">
        <a href="Main.do"><img src="${ctx }/img/Header_logo.png" alt="header_logo"></a>
      </div>
      <ul class="gnb">
        <li><a href="#">이벤트</a></li>
        <li><a href="#about">고객센터</a></li>
        <li id="member_menu" onclick="showPopup(event)">
          <div>
            <span><i class="fa fa-bars"></i></span>&nbsp;
            <span><i id="userImg" class="fa fa-user"></i></span>
          </div>
        </li>
      </ul>
    </nav>
    <div class="header_popup">
      <!-- 클릭시 로그인/ 회원가입 페이지로 이동 추가해야함 -->
      <div><a>로그인 / 회원가입 </a> </div>
      <!-- 클릭시 비회원 예약조회 페이지로 이동 추가해야함 -->
      <div><a>비회원 예약조회</a></div>
    </div>
  </header>



