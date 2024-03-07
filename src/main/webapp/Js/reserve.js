/**
 * 
 */
history.replaceState({}, null, location.pathname);
var IMP = window.IMP;
IMP.init('imp62080161');
let isCheck = false;
const regex = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/; //전화번호 정규표현식
const regex2 = /^[가-힣a-zA-Z]+$/; //한글+영문 정규표현식
const start_date = $('.reserve_start_date');
const end_date = $('.reserve_end_date');
const u_level = $('input[name=user_level]').val();
if(u_level > 0 && u_level < 11){
	let price = $('#reserve_price').text();
	 price = price - (price * (0.01*(u_level*2)));
	 $('#reserve_price').text(price);
	$('#reserve_view_price').text(price);
}
// 지도 만들기
var HOME_PATH = window.HOME_PATH || '.';
const _hotel_x = $('#hotel_x').val();
const _hotel_y = $('#hotel_y').val();

var map = new naver.maps.Map('reserve_map_view', {
	draggable: false,
	scrollWheel: false,
	center: new naver.maps.LatLng(_hotel_y, _hotel_x),
	zoom: 17
});

var marker = new naver.maps.Marker({
	position: new naver.maps.LatLng(_hotel_y, _hotel_x),
	map: map,
	icon: {
		url: HOME_PATH + '/img/ping.png', //50, 68 크기의 원본 이미지
		size: new naver.maps.Size(30, 30),
		scaledSize: new naver.maps.Size(30, 30),
		origin: new naver.maps.Point(0, 0),
		anchor: new naver.maps.Point(20, 40)
	}
});
function newMap() {
	var map2 = new naver.maps.Map('map2', {
		zoomControl: true,
		zoomControlOptions: {
			style: naver.maps.ZoomControlStyle.SMALL,
			position: naver.maps.Position.TOP_RIGHT
		},
		center: new naver.maps.LatLng(33.2484468, 126.4106058),
		zoom: 14
	});
	var marker = new naver.maps.Marker({
		position: new naver.maps.LatLng(33.2484468, 126.4106058),
		map: map2,
		icon: {
			url: HOME_PATH + '/img/ping.png', //50, 68 크기의 원본 이미지
			size: new naver.maps.Size(30, 30),
			scaledSize: new naver.maps.Size(30, 30),
			origin: new naver.maps.Point(0, 0),
			anchor: new naver.maps.Point(20, 40)
		}
	});
}

$('#reserve_map_view').click(function() {
	setTimeout(function() {
		window.dispatchEvent(new Event('resize'));
	}, 600); //-> 이거 안하면 모달창으로 불러올때 지도 짤림
	var mapModal = $('#map').clone();
	$('.footer_modal').addClass('modal_on');
	$('.modal_main').html('<div id="map2"></div>');
	newMap();
	//$('.modal_main').html(mapModal);
});





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
	if(check()){return;}
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
 	const date1 = new Date(_rday);
	const date2 = new Date(_dday);
	const diffDate = Math.abs((date2.getTime() - date1.getTime()) / (1000*60*60*24));
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
 		people : _people,
 		dif:diffDate
 	}
 	if(InsertData(_data) == false){
 		return;
 	}
 	IMP.request_pay({
 		pg : 'html5_inicis.INIpayTest',
 		pay_method : 'card',
 		merchant_uid : _data.uid, // 타임스템프 + 전화번호 + 이름
 		name : $('#reserve_hotel_name_u').text(),
 		amount : _price,
 		buyer_tel : _tel
 	},function(rsp){
 		if(rsp.success){
 			Modal(_data);
 		}
 	});
 }
function Modal(_data){
	const modal = $('.footer_modal');
	const data2 = {
		Modal_page : 'Modal_ReserveOk'
	} 
	$.ajax({
		url : "Modal.do",
		data : data2,
		success : function(data){
			modal.find('.modal_main').html(data);
			$('#M_reserve_date').text(_data.rday+' ~ ' +_data.dday+' ('+_data.dif+'일)');
			$('#M_reserve_price').text(_data.price+'원');
			modal.addClass('modal_on');
			modal.click(function(){
				if(confirm('메인으로 이동하시겠습니까?')){
					location.href="Main.do";
				}
			})
		},
		error : function(error){
			alert('err = '+error);
		}
	});
}
 //데이터베이스 데이터 추가
 function InsertData(_data){
 	let ischeck = true;
 	$.ajax({
 		type : "post",
 		url : "reserve_insert.do",
 		data : _data,
 		async : false,
 		success : function(data){
 			if(data == 0){
 				alert('남은 방이없습니다.');
 				ischeck =  false;
 			}
 		},
 		error : function(err){
 			alert('err = '+err);
 			ischeck =  false;
 		}
 	});
 	return ischeck;
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
	let price = $('input[name=room_price]').val();
	price = price * diffDate;
	$('#reserve_price').text(price);
	$('#reserve_view_price').text(price);
	
	if(u_level > 0 && u_level < 11){
	let price = $('#reserve_price').text();
	 	price = price - (price * (0.01*(u_level*2)));
	 	$('#reserve_price').text(price);
		$('#reserve_view_price').text(price);
	} 
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