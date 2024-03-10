history.replaceState({}, null, location.pathname);
$('#reserve_cancel').click(function(){
	const ch = $('input[name=radio]:checked').val();
	if(!ch){
		alert('취소하실 예약을 선택해주세요!');
		return;
	}
	$(this).attr('disabled',true);
	const target = $('input[name=radio]:checked').closest('div');
	const uid = target.find('#reserve_uid').text();
	const room_no = target.find('input[name=room_no]').val();
	const data = {
		uid : uid,
		room_no : room_no
	}
	$.ajax({
		type: 'post',
		url : 'reserve_cancel.do',
		data : data,
		async : false,
		success : function(data){
			if(data == 0){
				alert('취소되었습니다.');
			}
		},
		error: function(err){
			alert('err = ' + err);
		}
	});
	target.remove();
	$('#reserve_cancel').removeAttr('disabled');
});