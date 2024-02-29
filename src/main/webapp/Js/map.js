var HOME_PATH = window.HOME_PATH || '.';
 var map = new naver.maps.Map('map', {
    zoomControl: true,
    zoomControlOptions: {
        style: naver.maps.ZoomControlStyle.SMALL,
        position: naver.maps.Position.TOP_RIGHT
    },
    center: new naver.maps.LatLng(37.5665, 126.9780),
    zoom: 13
}); 

 var contentStrings = [];
 var price = [7777,8888,9999];
 
 for(var i = 0; i < price.length; i+=1){
	 contentStrings.push([
			'<div class="mapBox">'+price[i]+'원</div>',
		    '<div class="iw_inner">',
		    '<img src="'+ HOME_PATH +'/img/gyeongju/hilton_hotel/hilton_hotel.png" alt="서울시청" class="thumb" />',
		    '<div class="iw_info">',
		    '<div class="iw_star">3성급</div>',
		    '<h3>롯데월드 호텔</h3>',
		    '<div class="iw_where"> 강남구 </div>',
		    '<div class="iw_star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>',
		    '<p>'+price[i]+'원<br /></p>',
		    '</div>',
		    '</div>'
		].join(''));
 }
 
 function makeMarker(position, contents){
	 var marker = new naver.maps.Marker({
		    position: position,
		    map: map,
		    icon: {
		     	 //html element를 반환하는 CustomMapMarker 컴포넌트 할당
		        content: contents,
		        //마커의 크기 지정
		        size: new naver.maps.Size(38, 58),
		        //마커의 기준위치 지정
		        anchor: new naver.maps.Point(19, 58)
		        } 
		}); 
 }
 
	//외부로 부터 받아온 x , y (위,경도 값)
/*  for(var i = 0; i < contentStrings.length; i+=1){
	 makeMarker(new naver.maps.LatLng(37.5665+0.02*i, 126.9780+0.02*i),contentStrings[i]);
	 console.log("i = " + i);
 } */
 
function makeMAP(){
	console.log(contentStrings);
	 for(var i = 0; i < contentStrings.length; i+=1){
		 makeMarker(new naver.maps.LatLng(37.5665+0.02*i, 126.9780+0.02*i),contentStrings[i]);
		 console.log("i = " + i);
	 }
}
 
 makeMAP();
 
    
    // ---
    
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
    
    document.addEventListener('click', function(e) {
    	
    	var allMapBox = document.querySelectorAll(".mapBox");
    	var allinnerBox = document.querySelectorAll(".iw_inner");
    	console.log("내가 지금 누른거 = " + e.target.classList);
    	 // 호텔 박스 눌렀을때 호텔 정보 페이지로 이동하게끔.
    	 if( e.target.closest('.iw_inner')){ // 가장 최상위 class명 가져오기
	 		alert("해당 호텔 정보 페이지 이동");
	 		check = 1;
		 }
    	if(e.target.classList=="mapBox"){
    		// 기존에 열려있던 inner박스들 일단 사라지게하고,
     		allinnerBox.forEach(function (innerBox) {
     			if(innerBox.style.display == 'flex'){
     				innerBox.style.display = 'none';
     				console.log("이거 출력안되는듯?");
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