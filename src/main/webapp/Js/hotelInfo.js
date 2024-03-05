    
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
      btn.css('display','none');
    }
  }
  
  // -------- 사진 더보기 버튼 ---------
  	function showMoreImg(button){
		var img = $(button).prev('.rv_img');
		var btn = img.next('.img_more_btn');
		 if (img.css('max-height') !== 'none') {
     		 img.css('max-height', 'none');
     		 btn.css('display','none');
    		}
	  }
  
  
  // -------------- 리뷰 추천 버튼 누르면 추천 수 올라가게 ---
  
  	var up_btn = $('.up_btn'); // 추천 버튼
  	var cnt = $('.rec_cnt'); // 추천수 sql에서 받아오고
	var cur_cnt = parseInt(cnt.text()); // 현재 추천 수 
	
  	up_btn.click(function(){
		  cur_cnt++;
		  cnt.text(cur_cnt);
	  })
    // 이미 동일한 아이디로 누른 리뷰면 더 추천 못하게,
    //  리뷰 쓴 사람이랑 추천 누른사람이 같을때도 못하게 막기.
  // ------------
  
  
  
  
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
	        url: HOME_PATH +'/img/ping.png', //50, 68 크기의 원본 이미지
	        size: new naver.maps.Size(30, 30),
	        scaledSize: new naver.maps.Size(30, 30),
	        origin: new naver.maps.Point(0, 0),
	        anchor: new naver.maps.Point(20, 40)
	    }
	});
	
// 큰 지도 끝


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

$('.wide_full_btn').click(function(){
	setTimeout( function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});

// -------------------------------
// 리뷰 이미지 클릭했을때
	$('.rv_imgs').click(function(){
		var imageTag = this.outerHTML;
		console.log(imageTag);
		$('.footer_modal').css('background-color','black');
		$('.footer_modal').addClass('modal_on');
		$('.moal_cancle').css('background-color','white');
		$('.rv_imgs').css('height','800px');
		$('.rv_imgs').css('width','800px');
		$('.modal_main').html(imageTag);
		$('.modal_main').css('overflow','hidden');
	})

