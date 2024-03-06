
// 리뷰 별점에 따라 별 색칠하기 -------------   
var ratingElement = document.getElementById('rating');
var score = 4; // 여기에 원하는 점수를 설정

// 점수에 따라 별의 개수 계산
var starCount = Math.round(score * 5 / 10); // 5점 만점을 기준으로 계산

// 동적으로 HTML에 별의 개수를 추가 및 색상 적용
for (var i = 1; i <= 5; i++) {
	var star = document.createElement('div');
	star.className = 'rv_star';
	if (i <= score) {
		star.classList.add('filled'); // 색이 칠해진 별에 해당하는 클래스 추가
	}
	ratingElement.appendChild(star);
}

// ----------- 리뷰 별 만들기 끝

// ------ 리뷰 더보기 버튼 ----

function toggleContent(button) {
	var content = $(button).prev('.long_rv');
	var btn = content.next('.more_btn');
	if (content.css('max-height') !== 'none') {
		content.css('max-height', 'none');
		btn.css('display', 'none');
	}
}

// -------- 사진 더보기 버튼 ---------
function showMoreImg(button) {
	var img = $(button).prev('.rv_img');
	var btn = img.next('.img_more_btn');
	if (img.css('max-height') !== 'none') {
		img.css('max-height', 'none');
		btn.css('display', 'none');
	}
}


// -------------- 리뷰 추천 버튼 누르면 추천 수 올라가게 ---

var up_btn = $('.up_btn'); // 추천 버튼
var cnt = $('.rec_cnt'); // 추천수 sql에서 받아오고
var cur_cnt = parseInt(cnt.text()); // 현재 추천 수 

up_btn.click(function() {
	cur_cnt++;
	cnt.text(cur_cnt);
})
// 이미 동일한 아이디로 누른 리뷰면 더 추천 못하게,
//  리뷰 쓴 사람이랑 추천 누른사람이 같을때도 못하게 막기.
// ------------



// 지도 만들기
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
// -----------------------
// 새로운 지도 만들기
function newMap() {
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
			url: HOME_PATH + '/img/ping.png', //50, 68 크기의 원본 이미지
			size: new naver.maps.Size(30, 30),
			scaledSize: new naver.maps.Size(30, 30),
			origin: new naver.maps.Point(0, 0),
			anchor: new naver.maps.Point(20, 40)
		}
	});
}

// 큰 지도 만들기
var wide_map = new naver.maps.Map('wide_map', {
	zoomControl: true,
	zoomControlOptions: {
		style: naver.maps.ZoomControlStyle.SMALL,
		position: naver.maps.Position.TOP_RIGHT
	},
	center: new naver.maps.LatLng(33.2484468, 126.4106058),
	zoom: 14
});
var marker2 = new naver.maps.Marker({
	position: new naver.maps.LatLng(33.2484468, 126.4106058),
	map: wide_map,
	icon: {
		url: HOME_PATH + '/img/ping.png', //50, 68 크기의 원본 이미지
		size: new naver.maps.Size(30, 30),
		scaledSize: new naver.maps.Size(30, 30),
		origin: new naver.maps.Point(0, 0),
		anchor: new naver.maps.Point(20, 40)
	}
});

// 큰 지도 끝


// 지도를 클릭했을 때
$('#map').click(function() {
	setTimeout(function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});

// 지도 위 버튼을 클릭했을 때
$('.full_btn').click(function() {
	setTimeout(function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});

$('.wide_full_btn').click(function() {
	setTimeout(function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});

// -------------------------------
// 리뷰 이미지 클릭했을때 ( 쓰지 않는 코드 (임시))
/*	$('.rv_imgs').click(function(){
		var imageTag = this.outerHTML;
		console.log(imageTag);
		$('.footer_modal').css('background-color','black');
		$('.footer_modal').addClass('modal_on');
		$('.moal_cancle').css('background-color','white');
		$(imageTag).css('height','500px');
		$(imageTag).css('width','500px');
		$('.modal_main').html(imageTag);
		$('.modal_main').css('overflow','hidden');
	})*/

//-- 리뷰 이미지 클릭했을때 --
function clickImg(img) {
	var imageTag = $(img).clone();
	imageTag.css({
		'width': '100%', 
		'height': '100%'
	});
	console.log(imageTag);
	$('.footer_modal').css('background-color', 'black');
	$('.footer_modal').addClass('modal_on');
	$('.moal_cancle').css('background-color', 'white');
	$('.modal_main').html(imageTag);
	$('.modal_main').css('overflow', 'hidden');
};


//-- 객실 상세정보 클릭시 모달창 --
$('.detail_info').click(function() {
	var h3Content = $(this).closest('.room_info_header').find('h3').text();
	console.log(h3Content); /* 객실 이름 가져오기 */
	$('.footer_modal').css({
	  "padding-top": "5%",
      "padding-bottom": "5%",
      "padding-left": "30%",
      "padding-right": "30%"
	})
	$('body').css("overflow","hidden"); /* 모달창 밖에 스크롤 x */
	$('.footer_modal').addClass('modal_on');
	/*$('.modal_main').css('background-color','white');*/
	$('.modal_main').html(
	 `<div id="modal_info">  
		<div class="d_header">
   		 로얄스위트 트윈 오션 (Room Only)
  		</div>
  		<hr />
  		<div class="r_info">
    		<ul class="info_ul">
     		 <div>객실 정보</div>
     		  <li> 숙박 | 체크인 : 15:00 ~ 체크아웃 11:00</li>
    		  <li>2인 기준</li>
    		  <li>인원 추가시 비용이 발생되며, 현장에서 결제 바랍니다.</li>
     		  <li>더블베드 1개, 싱글베드 1개</li>
    		</ul>
   		 <hr />
   			 <ul class="info_ul">
      		<div>편의시설</div>
      		<li> TV, 쇼파, 옷장, 데스크, 에어컨, 미니바, 헤어드라이기, 욕실용품, 샤워가운, 슬리퍼</li>
   			</ul>
   		 <hr />
    		 <div class="r_info_del">취소 및 환불 규정</div>
   			 <ul class="info_ul">
     			<li><span class="heavy">[기본 취소 규정]</span></li>
      			<li>체크인 기준 2일 전 : 100% 환불</li>
     			<li>체크인 기준 1일 전 : 90% 환불</li>
      			<li>체크인 당일 및 No-show : 80% 환불</li>
      			<li><span class="heavy">[성수기 취소 규정] (매년 5월 ~ 10월, 12월 24일~31일)</span></li>
      			<li>체크인 기준 10일 전 및 예약 당일 : 100% 환불</li>
      			<li>체크인 기준 9일 전 ~ 7일 전 : 90% 환불</li>
      			<li>체크인 기준 6일 전 ~ 5일 전 : 70% 환불</li>
      			<li>체크인 기준 4일 전 ~ 3일 전 : 50% 환불</li>
      			<li>체크인 기준 2일 전 ~ 당일 및 No-show : 20% 환불</li>
      			<li><span class="warn">연박 시, 전체 금액에 대해 취소 수수료 적용됩니다</span></li>
      			<li><span class="warn">당일 취소 및 No-show는 앱 내 취소가 불가하므로, 당사 고객센터를 통하여 취소 및 환불 문의 바랍니다</span></li>
      			<li>예약 후 10분 내 취소될 경우 취소 수수료가 발생하지 않습니다. (*체크인 시간 경과 후 제외)</li>
      			<li>예약 후 10분 경과 시엔 해당 숙소의 취소 및 환불 규정이 적용됩니다. </li>
    		</ul>
  		</div> <!-- r_info -->
  	   </div> <!-- modal_info --> `
	);
})

// -------- 리뷰 클릭시 리뷰 목록으로 이동 ---
function scrollToReview() {
         $('html, body').animate({
        scrollTop: $('.review_header').offset().top-95
      }, 100);
}

// --------- 판매자 정보 창 --
function show_host_info(){
	$('.footer_modal').css({
	  "padding-top": "14%",
      "padding-bottom": "14%",
      "padding-left": "40%",
      "padding-right": "40%"
	});
	$('body').css("overflow","hidden"); /* 모달창 밖에 스크롤 x */
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html(
		
	`<div id="h_info">
	<div class="h_header">
   		 <h4>판매자 정보</h4>
  	</div>
  	<table>
     <colgroup>
      <col style="background-color: #e9ecec;"> <!-- 1열 배경색을 설정할 수 있음 -->
     </colgroup>
     <colgroup class="col2">
      <!-- 2열은 별도의 col 요소를 사용하지 않고 colgroup에 클래스를 부여하여 넓이 설정 -->
     </colgroup>
     <tr>
      <td>상호</td>
      <td>신라호텔</td>
     </tr>
     <tr>
      <td>대표자명</td>
      <td>신기훈</td>
     </tr>
     <tr>
      <td>주소</td>
      <td>제주특별자치도 서귀포시 색달동 2812-4</td>
     </tr>
     <tr>
      <td>전화번호</td>
      <td>010-1234-5678</td>
     </tr>
     <tr>
      <td>이메일</td>
      <td>host@naver.com</td>
     </tr>
  	</table>
  	</div> `
	);
}


