$('#Reserve_Info_submit').click(function(){
	const t = $('input[name=reserve_info_radio]:checked').val();
	if(!t){
		alert('선택 후 취소하기 버튼을 이용해 주세요');
	}
	//예약 번호 정한 후 취소추가 예정
});