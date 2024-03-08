history.replaceState({}, null, location.pathname);
let room_content_div = null;
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
			if(data > 0){
				alert('업데이트 완료했습니다.');
				location.href= location.href;
			}
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
});
$('#room_img_submit').click(function(){
	let no = $('input[name=radio]:checked').val();
	if(!no){
		alert('선택후 수정 버튼을 클릭해주세요');
		return;
	}
	location.href="ImgUpload.do?no="+no+'&rq=ro';
});
$('#room_submit').click(function(){
	$(this).attr('disabled',true);
	let no = $('input[name=radio]:checked').val();
	if(!no){
		alert('선택후 수정 버튼을 클릭해주세요');
		return;
	}
	else if(CheckData()){
		return;
	}
	const t = $('input[name=radio]:checked').closest('.room_content');
	const name = t.find('input[name=name]').val();
	const total_qty = t.find('input[name=total_qty]').val();
	const occ = t.find('input[name=occ]').val();
	const price = t.find('input[name=price]').val();
	const _data = {
		room_no : no,
		name : name,
		total_qty : total_qty,
		occ : occ,
		price : price
	}
	$.ajax({
		type : "post",
		url : "UpdateRoom.do",
		data : _data,
		async : false,
		success : function(data){
			if(data == 1){
				alert('업데이트 완료 되었습니다.');
			}
		},
		error : function(error){
			alert('error = '+error);
		}
	});
	$('#room_submit').removeAttr('disabled');
	room_content_div.find('input[name=name]').attr('readonly','readonly');
	room_content_div.find('input[name=total_qty]').attr('readonly','readonly');
	room_content_div.find('input[name=occ]').attr('readonly','readonly');
	room_content_div.find('input[name=price]').attr('readonly','readonly');
	room_content_div = null;
	$('input[name=radio]:checked').removeAttr('checked');
})
function CheckData(){
	let t = $('input[name=radio]:checked');
	if(!t.val()){
		return true;
	}
	t = t.closest('.room_content');
	const name = t.find('input[name=name]').val();
	const total_qty = t.find('input[name=total_qty]').val();
	const occ = t.find('input[name=occ]').val();
	const price = t.find('input[name=price]').val();
	alert(name+'\n'+total_qty+'\n'+occ+'\n'+price);
	if(!name){
		alert('호텔 이름을 입력하세요');
		t.find('input[name=name]').focus();
		return true;
	}else if(!total_qty){
		alert('예약 가능 방을 입력하세요');
		t.find('input[name=total_qty]').focus();
		return true;
	}else if(total_qty < 0){
		alert('예약 가능 방 입력을 확인해주세요');
		t.find('input[name=total_qty]').val('1');
		t.find('input[name=total_qty]').focus();	
		return true;
	}else if(!occ){
		alert('최대 인원을 입력하세요');
		t.find('input[name=occ]').focus();
		return true;
	}else if(occ < 0){
		alert('최대 인원을 0이상 입력하세요');
		t.find('input[name=occ]').focus();
		return true;
	}else if(!price){
		alert('룸의 가격을 입력하세요');
		t.find('input[name=price]').focus();
		return true;
	}else if(price < 100){
		alert('룸의 가격을 100원 이상 입력하세요');
		t.find('input[name=price]').focus();
		return true;
	}
	return false;
}

$('.room_changedata').change(function(){
	Changefied($(this));
})
function Changefied(e){
	if(room_content_div){
		room_content_div.find('input[name=name]').attr('readonly','readonly');
		room_content_div.find('input[name=total_qty]').attr('readonly','readonly');
		room_content_div.find('input[name=occ]').attr('readonly','readonly');
		room_content_div.find('input[name=price]').attr('readonly','readonly');
	}
	const target = e.closest('.room_content');
	room_content_div = target;
	target.find('input[name=name]').removeAttr('readonly');
	target.find('input[name=total_qty]').removeAttr('readonly');
	target.find('input[name=occ]').removeAttr('readonly');
	target.find('input[name=price]').removeAttr('readonly');
}

