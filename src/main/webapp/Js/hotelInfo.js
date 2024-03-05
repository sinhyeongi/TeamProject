  var HOME_PATH = window.HOME_PATH || '.';
  var map = new naver.maps.Map('map', {
    draggable: false,
    scrollWheel: false,
    center: new naver.maps.LatLng(33.2484468, 126.4106058),
    zoom: 17
  });

  var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(33.2484468, 126.4106058),
    map: map,
    icon: {
      url: HOME_PATH + '/img/ping.png', //50, 68 크기의 원본 이미지
      size: new naver.maps.Size(30, 30),
      scaledSize: new naver.maps.Size(30, 30),
      origin: new naver.maps.Point(0, 0),
      anchor: new naver.maps.Point(20, 40)
    }
  });
  
  // 새로운 지도 만들기
  function newMap(){
	var map2 = new naver.maps.Map('map2', {
	    zoomControl: true,
	    zoomControlOptions: {
	        style: naver.maps.ZoomControlStyle.SMALL,
	        position: naver.maps.Position.TOP_RIGHT
	    },
		   center: new naver.maps.LatLng(33.2484468, 126.4106058),
		   zoom: 14
		   });
	var marker = new naver.maps.Marker({
	    position: new naver.maps.LatLng(33.2484468, 126.4106058),
	    map: map2,
	    icon: {
	        url: HOME_PATH +'/img/ping.png', //50, 68 크기의 원본 이미지
	        size: new naver.maps.Size(30, 30),
	        scaledSize: new naver.maps.Size(30, 30),
	        origin: new naver.maps.Point(0, 0),
	        anchor: new naver.maps.Point(20, 40)
	    }
	});
}

// 지도를 클릭했을 때
$('#map').click(function(){
	setTimeout( function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});

// 지도 위 버튼을 클릭했을 때
$('.full_btn').click(function(){
	setTimeout( function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});