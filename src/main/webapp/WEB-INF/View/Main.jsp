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
	  <a href="HotelList.do?category=50"><div>
	  	<img src="${ctx}/img/Main_category_jeju.png" width="90%" height="100%" alt="jeju">
		<div class=category_name>제주도</div>
	  </div></a>
		<a href="HotelList.do?category=11"><div>
	  		<img src="${ctx}/img/Main_category_seoul.png" width="90%" height="100%" alt="서울">
			<div class=category_name>서울</div>
	  </div></a>
	  <a href="HotelList.do?category=26"><div>
	  	<img src="${ctx}/img/Main_category_busan.png" width="90%" height="100%" alt="부산">
		<div class=category_name>부산</div>
	  </div></a>
	  <a href="HotelList.do?category=42.15"><div>
	  	<img src="${ctx}/img/Main_category_ganrung.png" width="90%" height="100%" alt="강릉">
		<div class=category_name>강릉</div>
	  </div></a>
	  <a href="HotelList.do?category=28"><div>
	  	<img src="${ctx}/img/Main_category_inchun.png" width="90%" height="100%" alt="인천">
		<div class=category_name>인천</div>
	  </div></a>
	  <a href="HotelList.do?category=47.13"><div>
	  	<img src="${ctx}/img/Main_category_gungju.png" width="90%" height="100%" alt="경주">
		<div class=category_name>경주</div>
	  </div></a>
	  <a href="HotelList.do?category=26.35"><div>
	  	<img src="${ctx}/img/Main_category_heunde.png" width="90%" height="100%" alt="해운대">
		<div class=category_name>해운대</div>
	  </div></a>
	 <a href="HotelList.do?category=41.52"><div>
	  	<img src="${ctx}/img/Main_category_gapung.png" width="90%" height="100%" alt="가평">
		<div class=category_name>가평</div>
	  </div></a>
	  <a href="HotelList.do?category=46.13"><div>
	  	<img src="${ctx}/img/Main_category_ysu.png" width="90%" height="100%" alt="여수">
		<div class=category_name>여수</div>
	  </div></a>
	  <a href="HotelList.do?category=42.21"><div>
	  	<img src="${ctx}/img/Main_category_sukcho.png" width="90%" height="100%" alt="속초">
		<div class=category_name>속초</div>
	  </div></a>
	</div>
	<h1>Main</h1>
	<a href="Login.do">로그인하기</a><br/>
	<a href="Member_Info.do">정보보기</a><br/>

	<a href="reserve.do">예약페이지 (임시)</a><br/>
	<a href="HotelList.do">호텔 리스트 (임시)</a><br/>
	<a href="host_hotel_info.do">호텔 정보보기 (임시)</a><br/>
	<a href="HotelInfo.do">호텔 인포 (임시)</a><br/>
	<a href="HotelList.do">맵테스트 (임시)</a><br/>
	<a href="adminPage.do">관리자페이지(임시)</a><br/>
	<a href="host_hotel_info.do">호스트 호텔관리(임시)</a><br/>
	<a href="reserve.do">예약 페이지</a>
</main>
</body>
</html>