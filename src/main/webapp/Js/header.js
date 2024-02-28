
// 다른곳 클릭하면 팝업창 사라지게
document.addEventListener('click', function (event) {
  var popup = document.querySelector('.header_popup');

  // 클릭한 위치의 엘리먼트가 ul 또는 popup 내부에 있는지 확인
  var isInsideList = event.target.closest('ul');
  var isInsidePopup = event.target.closest('.header_popup');

  // 클릭한 위치가 ul 또는 popup 내부에 없으면 팝업 창 숨김
  if (!isInsideList && !isInsidePopup) {
    popup.style.display = 'none';
  }
});

// 클릭시 팝업창 나타나게
function showPopup(event) {
  // 클릭한 li 태그의 텍스트를 가져옴
  var listItemText = event.target.innerText;

  // 클릭한 위치를 가져옴
  // var clickX = event.clientX;
  // var clickY = event.clientY;

  // 팝업 창을 가져와서 내용과 위치를 설정하고 표시
  var popup = document.querySelector('.header_popup');
  // popup.innerText = '클릭한 아이템: ' + listItemText;
  popup.style.display = 'block';
  popup.style.top = 100+'%';
  popup.style.right = 11+ '%';
}

// Top 버튼 요소 찾기
var topButton = document.getElementById("topBtn");

// 스크롤 이벤트 추가
window.onscroll = function () {
  // 현재 스크롤 위치 확인
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    // 일정 스크롤 위치 이상이면 Top 버튼을 보이게 함
    topButton.style.display = "block";
  } else {
    // 일정 스크롤 위치 미만이면 Top 버튼을 숨김
    topButton.style.display = "none";
  }
};

// Top 버튼 클릭 시 페이지 상단으로 스크롤
topButton.addEventListener("click", function () {
  // document.body.scrollTop = 0; // Safari
  // document.documentElement.scrollTop = 0; // Chrome, Firefox, IE, Opera

  // 스크롤 천천히 올라감
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
});



// 날씨 출력하기

let lat = 0;
let lon = 0;

let city = "";
let temp = 0;
let desc = "";
let imgUrl = ""

const wt = document.querySelector(".weather");

// navigator.geolocation
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    document.body.innerHTML = "이 브라우저에서는 위치 경로 지원 안함 ";
  }
  console.log("Test");
}

function showPosition(position) {
  console.log("Latitude(위도): " + position.coords.latitude);
  console.log("Longitude(경도): " + position.coords.longitude);

  lat = position.coords.latitude;
  lon = position.coords.longitude;

  // get api  
  let appkey = "dc64e28a4c0fbbffb13c7e7e7abf87b6";
  // 발급 : https://api.openweathermap.org 여기서 발급 받음 
  // fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=인증발급키`)
  fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${appkey}`)
    .then(response => response.json())
    .then(data => {
      console.log(data);

      const city = data.name;
      const temp = Math.round((data.main.temp - 273.15) * 100) / 100; // K to C
      const desc = data.weather[0].description;
      const icon = data.weather[0].icon;
      const iconURL = `http://openweathermap.org/img/wn/${icon}@2x.png`;
      console.log(`${city} : ${temp}'C (${desc})`);
      console.log('imgUrl:', iconURL);

      const result = `<img src=${iconURL}>&nbsp;&nbsp;&nbsp;&nbsp;<div>${city}<br>${temp}'C</div>`;
      wt.insertAdjacentHTML('beforeend', result);
    })
    .catch(error => console.error('Error:', error));

}

window.onload = function () {
  getLocation();
}
/*$("").click(function () {
  // AJAX 요청 설정
  $.ajax({
    url: '', // 요청을 보낼 URL
    method: 'GET', // HTTP 메서드 (GET, POST 등)
    dataType: 'json', // 응답 데이터 형식 (json, xml 등)
    success: function (data) {
      alert('');
    },
    error: function (data) {
      console.error('데이터 불러오기 실패:');
      alert('데이터 불러오기 실패');
    }
  });
});*/


function modal_on(name){
	$('.footer_modal').addClass('modal_on');
	const _data = {
		Modal_page : name
	}
	
	$.ajax({
		type : "post",
		url : "Modal.do",
		data : _data, 
		success : function(data){
			$('.modal_main').html(data);
		},
		error : function(err){
			alert("err = "+err);
		}
	});
}
