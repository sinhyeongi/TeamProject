/**
 * 
 */

var IMP = window.IMP;
IMP.init('imp62080161');
let isCheck = false;
const regex = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/; //전화번호 정규표현식
const regex2 = /^[가-힣a-zA-Z]+$/; //한글+영문 정규표현식
const start_date = $('.reserve_start_date');
const end_date = $('.reserve_end_date');

flatpickr(start_date,{
	dateFormat : 'Y-m-d',
	enableTime : false,
	minDate : 'today',
	defaultDate : 'today',
	onClose : function(selectedDates,dateStr,instance){
		if(selectedDates != ''){
		end_date.val('');
		flatpickr(end_date,{
			dateFormat : 'Y-m-d',
			enableTime : false,
			minDate : new Date(dateStr).fp_incr(1),
			altInput : false,
			defaultDate : new Date(dateStr).fp_incr(1),
			locale:'ko'
			});
		}
	},
	locale:'ko'
});
flatpickr(end_date,{
		dateFormat : 'Y-m-d',
		enableTime : false,
		minDate : new Date().fp_incr(1),
		altInput : false,
		defaultDate : new Date().fp_incr(1),
		locale:'ko',
		onChange : function(){
			Change_price_text();
		}
});

//타임 스탬프
function TimeStamp(date){
	let month = date.getMonth() + 1;
        let day = date.getDate();
        let hour = date.getHours();
        let minute = date.getMinutes();
        let second = date.getSeconds();

        month = month >= 10 ? month : '0' + month;
        day = day >= 10 ? day : '0' + day;
        hour = hour >= 10 ? hour : '0' + hour;
        minute = minute >= 10 ? minute : '0' + minute;
        second = second >= 10 ? second : '0' + second;

        return date.getFullYear() + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
}

function check(){
	if($('input[name=name]').val() == null || $('input[name=name]').val() == ''){
		alert('이름 입력 후 결제 해주세요');
		$('input[name=name]').focus();
		return true;
	}else if(!regex2.test($('input[name=name]').val())){
		alert('이름을 정확하게 입력해주세요');
		$('input[name=name]').val('');
		return true;
	}else if($('input[name=tel]').val() == null || $('input[name=tel]').val() == ''){
		alert('전호번호를 입력후 결제 해주세요');
		$('input[name=tel]').focus();
		return true;
	}else if(!regex.test($('input[name=tel]').val())){
 		alert('전화번호를 형식에 맞게 입력해주세요');
 		$('input[name=tel]').val('');
 		return true;
 	}else if(!$('input[name=people]').val() || $('input[name=people]').val() <= 0){
 		alert('예약 인원 수를 입력해주세요');
 		$('input[name=people]').attr('min','1');
 		return true;
 	}
 	return false;
}
//결제 함수
function requestPay(){
	//if(check()){return;}
	// uid설정
 	const _name = $('input[name=name]').val();
 	const _tel = $('input[name=tel]').val();
 	const _price = $('#reserve_view_price').text();
 	const stamp = TimeStamp(new Date(Date.now()));
 	const _id = $('input[name=id]').val();
 	const _visit = $('input[name=visit]:checked').val();
 	const _rday = $('.reserve_start_date').val();
 	const _dday = $('.reserve_end_date').val();
 	const _hotel_no = $('input[name=hotel_no]').val();
 	const _room_no = $('input[name=room_no]').val();
 	const _add_req = $('#add_req').val();
 	const _people = $('#people').val();
 	const _data = {
 		uid : (stamp +'/'+_tel+'/'+_name),
 		name : _name,
 		phone : _tel,
 		price : _price,
 		id : _id,
 		visit : _visit,
 		rday : _rday,
 		dday : _dday,
 		add_req : _add_req,
 		room_no : _room_no,
 		hotel_no : _hotel_no,
 		people : _people
 	}
 	
 	IMP.request_pay({
 		pg : 'html5_inicis.INIpayTest',
 		pay_method : 'card',
 		merchant_uid : _data.uid, // 타임스템프 + 전화번호 + 이름
 		name : _name,
 		amount : price,
 		buyer_tel : _tel
 	},function(rsp){
 		if(rsp.success){
 			InsertData(_data);
 			alert('결제 완료');
 		}
 	});
 }

 //데이터베이스 데이터 추가
 function InsertData(_data){
 	$.ajax({
 		type : "post",
 		url : "reserve_insert.do",
 		data : _data,
 		success : function(data){
 			
 		},
 		error : function(err){
 			alert('err = '+err);
 		}
 	})
 }
 //본인 확인 함수
 function certifi(){
 	if(check()){return;}
 	const stamp = TimeStamp(new Date(Date.now()));
 	const _name = $('input[name=name]').val();
 	IMP.certification({
 		pg: 'inicis_unified.MIIiasTest',
 		merchant_uid : stamp+'/'+_name
 	},function(rsp){
 		if(rsp.success){
 			alert('본인인증 완료');
 			$('#check_tel').attr('disabled',true);
 			$('#check_tel').val('본인 인증 완료');
 			$('input[name=name]').attr('readonly',true);
 			$('input[name=name]').css('color','white');
 			$('input[name=name]').css('background-color','black');
 			$('input[name=tel]').attr('readonly',true);
 			$('input[name=tel]').css('color','white');
 			$('input[name=tel]').css('background-color','black');
 			console.log(rsp);
 			isCheck = true;
 		}
 	});
 }
 // 이름 입력 마다 이름이 정상적으로 입력하는지 체크
 $('input[name=name]').keyup(function(){
 	if($('input[name=name]').val() == null || $('input[name=name]').val() == ''){
 		$('.reserve_name_check').css('display','block');
		return;
	}else if(!regex2.test($('input[name=name]').val())){
		$('.reserve_name_check').css('display','block');
		return;
	}
	$('.reserve_name_check').css('display','none');
 })
 //전화번호 입력시 정상적으로 입력하는지 체크
 $('input[name=tel]').keyup(function(){
 	if($('input[name=tel]').val() == null || $('input[name=tel]').val() == ''){
		$('.reserve_tel_check').css('display','block');
		return;
	}else if(!regex.test($('input[name=tel]').val())){
 		$('.reserve_tel_check').css('display','block');
 		return;
 	}
 	$('.reserve_tel_check').css('display','none');
 });
 $('input[name=payment]').click(function(){
 
 	if(isCheck == false){
 		alert('본인 인증을 먼저 진행해 주세요');
 		return;
 	}
 	
 	$(this).attr('disabled',true);
 	requestPay();
 });
$('#check_tel').click(function(){
	certifi();
});
$('#reserve_login').click(function(){
	location.href= "Login.do";
});
//쿠폰 선택
$('input[name=coupon]').change(function(){
	const price = $('#reserve_price').text();
	let t = $(this).closest('.member_coupon_div').prevAll().length;
	const dislate = $('.member_coupon_div:eq('+t+')').find('#coupon_dislate').text();
	let change_price =null;
	if(dislate != 0){
		change_price = price - parseInt(price / dislate);
		if($('.member_coupon_div:eq('+t+')').find('#coupon_maxDisprice').text()){
		let change_maxprice = price - $('#coupon_maxDisprice').text();
		change_price = change_price < change_maxprice ? change_maxprice : change_price;
		}
	}
	else if(dislate == 0&&$('.member_coupon_div:eq('+t+')').find('#coupon_maxDisprice').text()){
		let change_maxprice = price - $('#coupon_maxDisprice').text();
		change_price = 0 < change_maxprice ? change_maxprice : 0;
	}
	$('#reserve_view_price').text(change_price);
	
})
//가격 변경
function Change_price_text(){
const start_date = $('.reserve_start_date');
const end_date= $('.reserve_end_date');
	if(!start_date.val() || !end_date.val()){
		return;
	}
	const date1 = new Date(start_date.val());
	const date2 = new Date(end_date.val());
	const diffDate = Math.abs((date2.getTime() - date1.getTime()) / (1000*60*60*24));
	if(diffDate <= 0){
		return;
	}
	let price = $('#reserve_price').text();
	price = price * diffDate;
	$('#reserve_price').text(price);
	$('#reserve_view_price').text(price);
	if($('input[name=coupon]:checked')){
		$('input[name=coupon]:checked').change();
	}
}
$('#people').keyup(function(){
	if($(this).val() > $(this).attr('max')){
		$(this).val($(this).attr('max'));
	}else if($(this).val() <= 0){
		$(this).val($(this).attr('max'));
	}
});
$('.reserve_view_show_btn').click(function(){
	$(this).css('display','none');
	$('.reserve_view_hidden_btn').css('display','block');
	$('.reserve_showBox').css('height','auto');
});
$('.reserve_view_hidden_btn').click(function(){
	$(this).css('display','none');
	$('.reserve_view_show_btn').css('display','block');
	$('.reserve_showBox').css('height','0');
})