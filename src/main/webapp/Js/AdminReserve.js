$('#admin_reserve_cancel_btn').click(function(){
	$(this).attr('disabled',true);
	const t = $('input[name=admin_reserve_radio]:checked').val();
	if(!t){
		alert('선택 후 이용해주세요');
		$(this).removeAttr('disabled');
		return ;
	}
	const target = $('input[name=admin_reserve_radio]:checked').closest('#Admin_Reserve_Content');
	const uid = target.find('.uid').text();
	const room_no = target.find('input[name=room_no]').val();
	const _data = {
		uid : uid,
		room_no : room_no
	}
	$.ajax({
		type:"post",
		url : "reserve_cancel.do",
		data : _data,
		success : function(data){
			if(data == 0){
				alert('예약이취소 되었습니다.');
				target.remove();
				$('#admin_reserve_cancel_btn').removeAttr('disabled');
			}
		},
		error : function(err){
			alert('err = '+err);
		}
	})
});