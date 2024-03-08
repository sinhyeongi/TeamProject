history.replaceState({}, null, location.pathname);
$('#allow').click(function () {
  history.go(-1);
})

var HOME_PATH = window.HOME_PATH || '.';

function initializeNaverMap() {
	var center;
	var zoom;
	if(htList.length > 20){ // 전체 보기일때 한반도 중심
		center = new naver.maps.LatLng(36.3671822, 127.9952542);
		zoom = 7;
	} else if(htList[0].no == 1){ // 제주도일때 제주도 중심
		center = new naver.maps.LatLng(33.3846216, 126.5534925);
		zoom = 10;
	}else { // 그 외 중심
		center = new naver.maps.LatLng(htList[0].y+15, htList[0].x+1);
		zoom = 11;
	}
	
	var map = new naver.maps.Map('mapContainer', {
	zoomControl: true,
    zoomControlOptions: {
        style: naver.maps.ZoomControlStyle.SMALL,
        position: naver.maps.Position.TOP_RIGHT
    },
    center: center, // 초기 중심 좌표
    zoom: zoom // 초기 줌 레벨
  });
  

 // 마커에 추가할 내용들 배열  
 var contentStrings = [];
 
 for(var i = 0; i < htList.length; i+=1){
	 contentStrings.push([
			'<div class="mapBox">'+htList[i].price+'원</div>',
		    '<div class="iw_inner">',
		    `<input type="hidden" value="${htList[i].no}">`,
		    '<img src="'+ HOME_PATH +'/img/'+htList[i].url[0]+'" alt="서울시청" class="thumb" />',
		    '<div class="iw_info">',
		    '<div class="iw_star">'+htList[i].star+'성급</div>',
		    '<h4>'+htList[i].name+'</h4>',
		    '<div class="iw_where">'+htList[i].address+'</div>',
		    '<div class="iw_star_point"><span>★'+htList[i].star_point+' </span> &nbsp; '+htList[i].reviewCount+'명이 평가함</div>',
		    '<p>'+htList[i].price+'원<br /></p>',
		    '</div>',
		    '</div>'
		].join(''));
 }
 
 	// 마커와 아이콘을 배열의 개수만큼 생성 후 , 마커에 아이콘 생성하기.
	for (var i = 0; i < htList.length; i++) {
      var marker = new naver.maps.Marker({
        position:  new naver.maps.LatLng(htList[i].y, htList[i].x),
        map: map
      });
		
	var icon = {
        content: contentStrings[i],
        size: new naver.maps.Size(30, 30),
        anchor: new naver.maps.Point(15, 15)
      };
      
    marker.setIcon(icon);
 }
 
}

// 클릭했을때 숨겨뒀던 mymodal을 보여주기.
$('.click_map').click(function(){
	setTimeout( function() {
	 window.dispatchEvent(new Event('resize'));
	}, 800); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').append(
		`<div id='myModal' class='modal'>
  	<div class='modal-content' id='mapContainer'>
  	</div>
	</div>`);
	initializeNaverMap();
	$("#myModal").show();
});


   var check = 1; // 디폴트는 1, 클릭했을때 값 2로, 2일때는 마우스 아웃해도 안사라지게
    
 // 클래스명이 'mapBox'인 모든 요소를 가져옵니다.
    var mapBoxes = document.querySelectorAll('.mapBox');

    // 각 mapBox에 대한 이벤트 리스너를 추가합니다.
    mapBoxes.forEach(function (mapBox) {
      mapBox.addEventListener('mouseover', function () {
        // 현재 mapBox의 다음 형제 요소를 찾습니다.
        var nextSibling = mapBox.nextElementSibling;
        // 다음 형제 요소가 있고 클래스명이 'iw_inner'인 경우에만 스타일을 변경합니다.
        if (nextSibling && nextSibling.classList.contains('iw_inner') && check==1) {
          nextSibling.style.display = 'flex';
        }
        console.log(check);
      });

      // mouseout 이벤트를 추가하여 마우스가 벗어날 때 다시 숨기도록 할 수 있습니다.
      mapBox.addEventListener('mouseout', function () {
        // 현재 mapBox의 다음 형제 요소를 찾습니다.
        var nextSibling = mapBox.nextElementSibling;
        // 다음 형제 요소가 있고 클래스명이 'iw_inner'인 경우에만 스타일을 변경합니다.
        if (nextSibling && nextSibling.classList.contains('iw_inner') && (check == 1)) {
          nextSibling.style.display = 'none';
        }
      });
      
    });
    
    
    // 마우스 올렸을 때 호텔정보창 띄우기
    
    document.addEventListener('mouseover', function(e){
		const targetClassName = e.target.classList.value;
		if(targetClassName == "mapBox"){
			var nextSibling = e.target.nextElementSibling;
		   if (nextSibling && nextSibling.classList.contains('iw_inner') && check==1) {
           nextSibling.style.display = 'flex';
          }
		}
	});
    
    document.addEventListener('mouseout', function (e) {
		var allinnerBox = document.querySelectorAll(".iw_inner");
		const targetClassName = e.target.classList.value;
		
		if(targetClassName != "mapBox" && check == 1){
			  allinnerBox.forEach(function (innerBox) {
     			if(innerBox.style.display == 'flex'){
     				innerBox.style.display = 'none';
     			}
     		});
		 }
      });
    
    // -------------------
    
    
    // 클릭했을 때 호텔 정보 창 띄우기
    document.addEventListener('click', function(e) {
    	
    	var allMapBox = document.querySelectorAll(".mapBox");
    	var allinnerBox = document.querySelectorAll(".iw_inner");
    	console.log("내가 지금 누른거 = " + e.target.classList);
    	 // 호텔 박스 눌렀을때 호텔 정보 페이지로 이동하게끔.
    	 if( e.target.closest('.iw_inner')){ // 가장 최상위 class명 가져오기
	 		var getNo = e.target.closest('.iw_inner').querySelector('input[type="hidden"]').value;
	 		location.href="HotelInfo.do?no="+getNo;
	 		check = 1;
		 }
    	if(e.target.classList=="mapBox"){
    		// 기존에 열려있던 inner박스들 일단 사라지게하고,
     		allinnerBox.forEach(function (innerBox) {
     			if(innerBox.style.display == 'flex'){
     				innerBox.style.display = 'none';
     			}
     		});
    		// 기존에 add가 추가되어 있으면 삭제
     		allMapBox.forEach(function(mapBox){
     			if(mapBox.classList.contains('add')){
     				mapBox.classList.remove('add');
     			}
     		});
        	console.log('맵박스클릭');
      		var nextSibling = e.target.nextElementSibling;
      		//console.log(nextSibling);
      		nextSibling.style.display = 'flex';
      		e.target.classList.add('add');
       		check = 2;
       		console.log(check);
     	} 
     	else if(!e.target.classList.contains("mapBox")){
     		console.log('맵박스 말고 다른곳클릭');
     		allinnerBox.forEach(function (innerBox) {
     			if(innerBox.style.display == 'flex'){
     				innerBox.style.display = 'none';
     			}
     		});
     		
     		allMapBox.forEach(function(mapBox){
     			if(mapBox.classList.contains('add')){
     				mapBox.classList.remove('add');
     			}
     		});
       		check = 1;
       		console.log(check);
     	}

     }); 
     
     
$('.list_category_btn').click(function(){
	const data = $(this).val();
	location.href="HotelList.do?category="+data;
})
$('.container').click(function(){
	const t = $(this).prevAll().length;
	const target = $('.container:eq('+t+')').find('input[name=hotel_no]').val();
	location.href="HotelInfo.do?no="+target;
})