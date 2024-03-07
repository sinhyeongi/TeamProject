
$('#Reserve_Info_submit').click(function(){
	$(this).attr('disabled',true);
	const ch = $('input[name=reserve_info_radio]:checked').val();
	if(!ch){
		alert('선택 후 취소하기 버튼을 이용해 주세요');
		$(this).attr('disabled',false);
		return;
	}
	const t = $('input[name=reserve_info_radio]:checked').closest('.Reserve_Info_item').prevAll('.Reserve_Info_item').length;
	const uid = $('.Reserve_Info_item:eq('+(t)+')').find('.uid').text();
	const room_no = $('.Reserve_Info_item:eq('+(t)+')').find('input[name=room_no]').val();
	cancelPay(uid,room_no);
});
function cancelPay(_uid,_room_no){
	data = {
		uid : _uid,
		room_no : _room_no
	}
	$.ajax({
		type : "post",
		url : "reserve_cancel.do",
		data : data,
		success : function(data){
			if(data == 0){
				alert('예약이 취소 되었습니다.');
				location.href=location.href;
			}
		},
		error : function(error){
			alert('error = '+error);
		}
	})
}
