<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mz5px9iutb"></script>
</head>
<style>
	container{
		display:flex;
 		 justify-content: flex-end;
	}
	#mapHead{
		width:330px;
		height:200px;
		border:1px solid lightgray;
		border-radius : 10px;
		display:flex;
		flex-direction:column;
	}
	
	#map{
	/* left: 80%; */
	width:100%;
	height:80%;
	border:1px solid lightgray;
	border-radius : 10px;
	flex:7;
	}
	.loc{
	 flex:3;
	 margin-left:10px;
	 color: rgb(112, 112, 112);
	 font-size : 14px;
	 /* font-weight:bold; */
	}
</style>
<body>
 <container>
	<div id="mapHead">
	 <div id="map"></div>
	 <div class="loc"><br>제주특별자치도 서귀포시 색달동 2812-4</div>
	</div>
 </container>
</body>
</html>
<script>
var HOME_PATH = window.HOME_PATH || '.';
var map = new naver.maps.Map('map', {
   /* draggable: false, */
   center: new naver.maps.LatLng(33.2484468, 126.4106058),
   zoom: 17
}); 

var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(33.2484468, 126.4106058),
    map: map,
    icon: {
        url: HOME_PATH +'/img/ping.png', //50, 68 크기의 원본 이미지
        size: new naver.maps.Size(30, 30),
        scaledSize: new naver.maps.Size(30, 30),
        origin: new naver.maps.Point(0, 0),
        anchor: new naver.maps.Point(20, 40)
    }
});



/* // 새로운 지도 생성
var clonedMap = new naver.maps.Map('newMapContainer', {
	   center: new naver.maps.LatLng(33.2484468, 126.4106058),
	   zoom: 17
}); */

$('#map').click(function(){
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html(mapModal);
});

</script>