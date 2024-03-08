<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
</head>
<body>
<main>
	<div id="main_log">
		<img alt="Main_logo" src="${ctx }/img/Main_logo.jpeg">
	</div>

	<h2 id="slick_title">국내 인기 여행지</h2>
	<div class="multiple-items">
	  <a href="HotelList.do?category=50">
	  	<img src="${ctx}/img/Main_category_jeju.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>제주도</label>
	  </a>
		<a href="HotelList.do?category=11">
	  		<img src="${ctx}/img/Main_category_seoul.png" width="90%" height="100%" alt="jeju">
			<label class=category_name>서울</label>
	  </a>
	  <a href="HotelList.do?category=26">
	  	<img src="${ctx}/img/Main_category_busan.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>부산</label>
	  </a>
	  <a href="HotelList.do?category=42.15">
	  	<img src="${ctx}/img/Main_category_ganrung.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>강릉</label>
	  </a>
	  <a href="HotelList.do?category=28">
	  	<img src="${ctx}/img/Main_category_inchun.png" width="90%" height="100%" alt="jeju">
	  	<label class=category_name>인천</label>
	  </a>
	  <a href="HotelList.do?category=47.13">
	  	<img src="${ctx}/img/Main_category_gungju.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>경주</label>
	  </a>
	  <a href="HotelList.do?category=26.35">
	  	<img src="${ctx}/img/Main_category_heunde.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>해운대</label>
	  </a>
	  <a href="HotelList.do?category=41.52">
	  	<img src="${ctx}/img/Main_category_gapung.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>가평</label>
	  </a>
	  <a href="HotelList.do?category=46.13">
	  	<img src="${ctx}/img/Main_category_ysu.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>여수</label>
	  </a>
	  <a href="HotelList.do?category=42.21">
	  	<img src="${ctx}/img/Main_category_sukcho.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>속초</label>
		</a>
	  <c:if test="${log eq 'admin'}">
	  <a href="adminPage.do" target="_blank">
	  	<img src="${ctx}/img/Header_logo.png" width="90%" height="100%" alt="jeju">
		<label class=category_name>관리자페이지로가기</label>
	  </a>
	  </c:if>
	</div>
	<h1>Main</h1>
	<a href="Login.do">로그인하기</a><br/>
	<a href="Member_Info.do">정보보기</a><br/>
	<a href="Member_applyHost.do">호스트신청하기(임시)</a><br/>
	<a href="reserve.do">예약페이지 (임시)</a><br/>
	<a href="host_hotel_info.do">호텔 정보보기 (임시)</a><br/>
	<a href="HotelInfo.do">호텔 인포 (임시)</a><br/>
	<a href="HotelList.do">맵테스트 (임시)</a><br/>
	<a href="host_hotel_info.do">호스트 호텔관리(임시)</a><br/>

	<a href="reserve.do">예약 페이지</a><br/>
	<a href="ReviewWrite.do">리뷰작성</a><br/>
	<a href="BoarderWrite.do?type=notice">공지사항 글쓰기</a><br/>
	<a href="BoarderWrite.do?type=qa">문의사항 글쓰기</a><br/>
	

<c:if test="${log ne null}">
	<input type="hidden" id="log" value="${log}"/>
	<button onclick="Logout(log)" >로그아웃</button><br/>
</c:if>
</main>
</body>
</html>