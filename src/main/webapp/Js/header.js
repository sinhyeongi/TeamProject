
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
  popup.style.right = 0+ '%';
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