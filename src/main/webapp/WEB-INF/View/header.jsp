<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
	<!-- fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
	<!-- <script defer="defer" src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script> -->
	
	<!-- jquert  --> 
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<!-- flatpickr js import	 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
	
	<!-- detailNotice js -->
	<c:if test="${page eq 'detailNotice.jsp' }">
	<script type="text/javascript" defer src="${ctx}/Js/detailNotice.js"></script>
	</c:if>
	
	<!-- event js -->
	<c:if test="${page eq 'eventPage.jsp' }">
	<script type="text/javascript" defer src="${ctx}/Js/event.js"></script>
	</c:if>
		
	<!-- LoginInput js -->
	<c:if test="${page eq 'LoginInput.jsp'}">
	<script type="text/javascript" defer src="${ctx}/Js/LoginInput.js"></script>
	</c:if>
	
	<!-- MemberInsert css and js -->
	<c:if test="${page eq 'Member_Insert.jsp' }">
	<script defer src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" defer src="${ctx}/Js/Member_Insert.js"></script>
	</c:if>
	
	<!-- Login js -->
	<c:if test="${page eq 'Login.jsp' }">
	<!-- kakao Login sdk  -->
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js" integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
	<script type="text/javascript" defer src="${ctx}/Js/kakaoLogin.js"></script>
  	<!--  Naver Login -->
  	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" defer src="${ctx}/Js/Login.js?dsa2"></script>
	</c:if>

	<!--  Js import -->
	<script defer="defer" src="${ctx }/Js/header.js?4s"></script>
	<script defer="defer" src="${ctx }/Js/footer.js?dsa"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script><!-- jquert  -->
	
	<!--  Main js -->
	<c:if test="${page eq 'Main.jsp' }">
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script defer="defer" src="${ctx }/Js/Main.js?sa"></script>
	</c:if>
	
	<!--  Reserve js -->
	<c:if test="${page eq 'reserve.jsp'}">
		<!-- iamport.payment.js -->
		<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mz5px9iutb"></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
		<script defer="defer" src="${ctx }/Js/reserve.js?ds3233dsa"></script>
	</c:if>
	
	<!-- LoginInput js -->
	<c:if test="${page eq 'Login.jsp' }">
		<script type="text/javascript" defer src="${ctx}/Js/LoginInput.js"></script>
	</c:if>
	
	<!--  Naver_Login js -->
	<c:if test="${page eq 'Naver_Login.jsp' }">
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script defer="defer" src="${ctx }/Js/Naver_Login.js?ds"></script>
	</c:if>
	<c:if test="${page eq 'Member_Info.jsp' }">
		<script defer="defer" src="${ctx }/Js/Member_Info.js?ds"></script>
	</c:if>
	<c:if test="${page eq 'Member_Reserve_Info.jsp' }">
		<script defer="defer" src="${ctx }/Js/Member_Reserve_Info.js?ds"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	</c:if>
	<c:if test="${page eq 'host_hotel_info.jsp' }">
		<script defer="defer" src="${ctx }/Js/host_hotel_info.js?ds"></script>
	</c:if>
	
	<!-- hotelList js  -->
	<c:if test="${page eq 'hotelList.jsp' }">
	<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mz5px9iutb"></script>
	 <script defer="defer" src="${ctx }/Js/hotelList.js?ds"></script>
	</c:if>
	
	<!-- hotelInfo js  -->
	 <c:if test="${page eq 'hotelInfo.jsp' }">
	 <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mz5px9iutb"></script>
	 <script defer="defer" src="${ctx }/Js/hotelInfo.js?ds"></script>
	</c:if>
	
	<!-- host_hotel_modify js  -->
	<c:if test="${page eq 'host_hotel_modify.jsp' }">
		<script defer="defer" src="${ctx}/Js/host_hotel_modify.js"></script>
	</c:if>
	
	<!-- ImgUpload js  -->
	<c:if test="${page eq 'ImgUpload.jsp' }">
		<script defer="defer" src="${ctx}/Js/ImgUpload.js"></script>
	</c:if>
	
	<!-- eventPage js and css -->
	<c:if test="${page eq 'event.jsp' }">
		<script defer="defer" src="${ctx}/Js/event.js"></script>
		<link rel="stylesheet" href="${ctx}/Css/event.css" type="text/css">
	</c:if>
	
	<!-- Cstomer_service_center js and css -->
	<c:if test="${page eq 'Customer_Service_Center.jsp' }">
		<script defer="defer" src="${ctx}/Js/Customer_Service_Center.js"></script>
		<link rel="stylesheet" href="${ctx}/Css/Customer_Service_Center.css" type="text/css">
	</c:if>
	
	<!--  비회원 예약조회 -->
	<c:if test="${page eq 'NoMember_Reserve_Info.jsp' }">
		<script defer="defer" src="${ctx}/Js/NoMember_Reserve_Info.js"></script>
	</c:if>
	<c:if test="${page eq 'NoMember_Reserve_Info2.jsp' }">
		<script defer="defer" src="${ctx}/Js/NoMember_Reserve_Info2.js"></script>
	</c:if>
	<c:if test="${page eq 'Member_Applytohost.jsp' }">
		<script defer src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script defer="defer" src="${ctx}/Js/Member_Applytohost.js"></script>
	</c:if>
	<c:if test="${page eq 'AddRoom.jsp' }">
		<script defer="defer" src="${ctx}/Js/AddRoom.js"></script>
	</c:if>
	
	
<!--  =========================== =========================== =========================== =========================== =========================== =========================== -->
<!--  =========================== =========================== =========================== =========================== =========================== =========================== -->
	<!--  css import -->
	<link rel="stylesheet" href="${ctx}/Css/header.css?dbgf3333" type="text/css">
	<link rel="stylesheet" href="${ctx}/Css/footer.css?dsdsd32" type="text/css">
	<!-- LoginInput css -->
	<c:if test="${page eq 'LoginInput.jsp'}">
	<link rel="stylesheet" type="text/css" href="${ctx}/Css/LoginInput.css">
	</c:if>
	
	<!-- MsgPage css -->
	<c:if test="${page eq 'MsgPage.jsp'}">
	<link rel="stylesheet" type="text/css" href="${ctx}/Css/MsgPage.css">
	</c:if>
	
	<!-- Notice css -->
	<c:if test="${page eq 'notice.jsp' || page eq 'detailNotice.jsp'}">
	<link rel="stylesheet" type="text/css" href="${ctx}/Css/notice.css">
	</c:if>
	
	<!-- BoarderWrite -->
	<c:if test="${page eq 'boarderWritePage.jsp'}">
	<link rel="stylesheet" type="text/css" href="${ctx}/Css/boarderWrite.css">
	</c:if>
	
	<!-- LoginInput css -->
	<c:if test="${page eq 'LoginInput.jsp'}">
	<link rel="stylesheet" type="text/css" href="${ctx}/Css/LoginInput.css">
	</c:if>
	
	<!-- Login css -->
	<c:if test="${page eq 'Login.jsp' }">
		<link rel="stylesheet" type="text/css" href="${ctx}/Css/Login.css">
	</c:if>
	<c:if test="${page eq 'reserve.jsp'}">
		<link rel="stylesheet" href="${ctx}/Css/reserve.css?dsd3343a" type="text/css">
	</c:if>
	<c:if test="${page eq 'Main.jsp' }">
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
		<link rel="stylesheet" href="${ctx}/Css/main.css?ds33322342134" type="text/css">
	</c:if>
	<c:if test="${page eq 'Member_Insert.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/Member_Insert.css?ds3332" type="text/css">
	</c:if>
	<c:if test="${page eq 'Member_Info.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/Member_Info.css?ds3332" type="text/css">
		<link rel="stylesheet" href="${ctx}/Css/profile.css" type="text/css">
	</c:if>
	<c:if test="${page eq 'Member_Reserve_Info.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/Member_Reserve_Info.css" type="text/css">
		<link rel="stylesheet" href="${ctx}/Css/profile.css" type="text/css">
	</c:if>
	<c:if test="${page eq 'Member_PointAndCoupon_Info.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/Member_PointAndCoupon_Info.css" type="text/css">
		<link rel="stylesheet" href="${ctx}/Css/profile.css" type="text/css">
	</c:if>

	<c:if test="${page eq 'host_hotel_info.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/host_hotel_info.css" type="text/css">
	</c:if>

	<!-- hotelList css -->
	<c:if test="${page eq 'hotelList.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/hotelList.css" type="text/css">
		<link rel="stylesheet" href="${ctx}/Css/map.css" type="text/css">
	</c:if>
	<!-- hotelInfo css  -->
		<c:if test="${page eq 'hotelInfo.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/hotelInfo.css" type="text/css">

	</c:if>

	<!-- admin_MemberList -->
	<c:if test="${page eq 'admin_memberList.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/admin_memberList.css" type="text/css">
		<script defer="defer" src="${ctx}/Js/admin_memberList.js?sa"></script>
	</c:if>
	<!-- host_hotel_info css -->
	<c:if test="${page eq 'host_hotel_modify.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/host_hotel_modify.css" type="text/css">
	</c:if>
	<!-- ImgUpload css -->
	<c:if test="${page eq 'ImgUpload.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/ImgUpload.css" type="text/css">
	</c:if>
	<!--  비회원 예약 조회 -->
	<c:if test="${page eq 'NoMember_Reserve_Info.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/NoMember_Rerserve_Info.css" type="text/css">
	</c:if>
	<c:if test="${page eq 'NoMember_Reserve_Info2.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/NoMember_Rerserve_Info2.css" type="text/css">
	</c:if>
	<c:if test="${page eq 'Member_Applytohost.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/Member_Applytohost.css" type="text/css">
	</c:if>
	<c:if test="${page eq 'AddRoom.jsp' }">
		<link rel="stylesheet" href="${ctx}/Css/AddRoom.css" type="text/css">
	</c:if>
</head>
<body>

  <header>
    <nav>
      <div class="header_logo">
        <a href="Main.do"><img src="${ctx }/img/Header_logo.png" alt="header_logo"></a>
      </div>
      <ul class="gnb">
        <!-- <li><a href="Event.do">이벤트</a></li> -->
        <li><a href="Customer_Service_Center.do">고객센터</a></li>
        <li id="member_menu" onclick="showPopup(event)">
          <div>
            <span><i class="fa fa-bars"></i></span>&nbsp;
            <span><i id="userImg" class="fa fa-user"></i></span>
          </div>
        </li>
        <li class="weather"></li>
      </ul>
    </nav>
    <div class="header_popup">
    	<c:if test="${log eq null }">
      	<!-- 클릭시 로그인/ 회원가입 페이지로 이동 추가해야함 -->
      	<div><a href="Login.do">로그인 / 회원가입 </a> </div>
      	<!-- 클릭시 비회원 예약조회 페이지로 이동 추가해야함 -->
      	<div><a href="NoMember_Reserve_Info.do">비회원 예약조회</a></div>
      </c:if>
      <c:if test="${log ne null }">
      <div><a href="Member_Info.do"> 내정보 </a></div>
      <div><a href="Reserve_Info.do"> 예약 조회 </a></div>
      <div><a href="Member_PointAndCoupon_Info.do"> 쿠 폰 </a></div>
      <div><a href="Logout.do"> 로그아웃 </a></div>
      <c:if test="${log_level >= 900 }">
      	<div><a href="host_hotel_info.do">내 호텔 관리</a></div>
      </c:if>
      </c:if>
    </div>
  </header>
	<button id="topBtn" title="Go to top"><i class="fa fa-angle-up"></i>&nbsp;TOP</button>
