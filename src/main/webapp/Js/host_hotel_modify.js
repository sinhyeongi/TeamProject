
$('.host_hotel_info_room').click(function(){
	$('.hotel_info').animate({height : '0%'},'500');
	$('.room_info').animate({height : '90%'},'500');
	$(this).css('display','none');
	$(this).css('padding','0');
	$('.room_info').css('padding','12px');
	$('.host_hotel_info_hotel').css('flex','1');
	$('.host_hotel_info_hotel').css('display','block');
	$('.host_hotel_info_hotel').css('height','100%');
})
$('.host_hotel_info_hotel').click(function(){
	$(this).css('display','none');
	$('.hotel_info').animate({height : '90%'},'500');
	$('.room_info').css('padding','0');
	$('.room_info').animate({height : '0%'},'500');
	$(this).css('display','none');
	$('.host_hotel_info_room').css('display','block');
})

$('#hotel_submit').click(function(){
	if(check()){
		return;
	}
	const _no = $('#hotel_no').val();
	const _star = $('#hotel_star').val();
	const _name = $('#hotel_name').val();
	const _checkin = $('#hotel_checkin').val();
	const _checkout = $('#hotel_checkout').val();
	const _fac = $('#hotel_fac').val();
	const _account = $('#hotel_account').val();
	const _data = {
		no : _no,
		star : _star,
		name : _name,
		checkin : _checkin,
		checkout : _checkout,
		fac : _fac,
		account : _account,
		rq : 'update'
	}
	$.ajax({
		type:"post",
		url : "host_hotel_mif.do",
		data : _data,
		success: function(data){
			alert(data);
		},
		error : function(err){
			alert('err = '+err);
		}
	});
});

function check(){
	const _star = $('#hotel_star').val();
	const _name = $('#hotel_name').val();
	const _checkin = $('#hotel_checkin').val();
	const _checkout = $('#hotel_checkout').val();
	const _fac = $('#hotel_fac').val();
	const _account = $('#hotel_account').val();
	//정규표현식
	const accountreg = /^(\d{1,})(-(\d{1,})){1,}/;
	const timereg = /^(\d{2})(:*(\d{2}))/;
	if(_star <= 0 || _star >5){
		alert('0 ~ 5성급 사이에서 골라주세요');
		$('#hotel_star').val(1);
		$('#hotel_star').focus();
		return true;
	}else if(!_name){
		alert('호텔 이름을 입력해주세요');
		$('#hotel_name').focus();
		return true;
	}else if(_name.length < 5){
		alert('호텔이름을 5글자 이상 입력해주세요');
		$('#hotel_name').focus();
		return true;
	}else if(!_fac){
		alert('부대시설을 입력해주세요');
		return true;
	}else if(!_account){
		alert('계좌 번호를 입력해주세요');
		return true;
	}else if(accountreg.test(_account)==false){
		alert('계좌번호를 형식에 맞게 입력해주세요');
		$('#hotel_account').val('');
		$('#hotel_account').focus();
		return true;
	}else if(!_checkin){
		alert('체크인 시간을 입력하세요');
		return true;
	}else if(timereg.test(_checkin)==false){
		alert('체크인 시간에 숫자만 입력해주세요');
		return true;
	}else if(!_checkout){
		alert('체크아웃 시간을 입력하세요');
		return true;
	}else if(timereg.test(_checkout)==false){
		alert('체크아웃 시간에 숫자만 입력해주세요');
		return true;
	}
	return false;
}

$('#hotel_img_submit').click(function(){
	
	location.href="ImgUpload.do?no="+$('#hotel_no').val()+'&rq=ho';
})