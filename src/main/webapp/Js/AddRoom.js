$('#AddRoom_submit').click(function(){
	$(this).attr('disabled',true);
	if(check()){
		return;
	}
	const name = $('input[name=name]').val();
	const price = $('input[name=price]').val();
	const total_qty = $('input[name=total_qty').val();
	const occ = $('input[name=occ]').val();
	const bedinfo = $('textarea[name=bedinfo]').val();
	const amenities = $('textarea[name=amenities]').val();
	const _data = {
		hotel_no : $('input[name=hotel_no]').val(),
		name : name,
		price : price,
		total_qty : total_qty,
		occ : occ,
		bedinfo : bedinfo,
		amenities : amenities
	}
	$.ajax({
		type : "post",
		url : "Room_add.do",
		data : _data,
		success : function(data){
			if(data == 1){
				alert('추가완료');
				if(confirm('더 추가하시겠습니까?')){
					location.href=location.href;
					return;
				}
				location.href="host_hotel_mif.do?no="+_data.hotel_no;
			}
		},
		error : function(err){
			alert('err = '+err);
		}
	})
});

function check(){
	const name = $('input[name=name]').val();
	const price = $('input[name=price]').val();
	const total_qty = $('input[name=total_qty').val();
	const occ = $('input[name=occ]').val();
	const bedinfo = $('textarea[name=bedinfo]').val();
	const amenities = $('textarea[name=amenities]').val();
	if(!name){
		alert('방 이름을 입력해주세여');
		$('input[name=name]').focus();
		return true;
	}else if(!price){
		alert('가격을 입력하세여');
		$('input[name=price]').focus();
		return true;
	}else if(price < 100){
		alert('가격을 100원 이상 입력하세여');
		$('input[name=price]').val('');
		$('input[name=price]').focus();
		return true;
	}else if(!total_qty){
		alert('객실 수 를 입력해주세요');
		$('input[name=total_qty]').focus();
		return true;
	}else if(total_qty < 1){
		alert('객실 수를 1이상 입력하세여');
		$('input[name=total_qty]').val('');
		$('input[name=total_qty]').focus();
		return true;
	}else if(!occ){
		alert('객실 최대 인원을 입력해주세요');
		$('input[name=occ]').focus();
		return true;
	}else if(occ < 1){
		alert('객실 최대 인원을 1명이상 입력해주세요');
		$('input[name=occ]').val(1);
		$('input[name=occ]').focus();
		return true;
	}else if(!bedinfo){
		alert('침대 정보를 입력해주세요');
		$('input[name=bedinfo]').focus();
		return true;
	}else if(!amenities && confirm('편의 시설에 입력한 값이없습니다.\n이대로 추가하시겠습니까?') == false){
		$('textarea[name=amenities]').focus();
		return true;
	}
	return false;
}