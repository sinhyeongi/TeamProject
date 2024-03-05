/**
 * 
 */

var IMP = window.IMP;
IMP.init('imp62080161');
let isCheck = false;
const regex = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/; //전화번호 정규표현식
const regex2 = /^[가-힣a-zA-Z]+$/; //한글+영문 정규표현식
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

alert(stamp);
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
 	}
 	return false;
}
//결제 함수
function requestPay(){
	if(check()){
		return;
	}
	// uid설정
	const hotel_name = $('input[name=hotel_name]').val();
	const id = $('input[name=id]').val();
	const dday = $('input[name=dday]').val();
	const rday = $('input[name=rday]').val();
	const uid = id+'/'+hotel_name+','+rday+':'+dday;
	
	
 	const _name = $('input[name=name]').val();
 	const _tel = $('input[name=tel]').val();
 	const price = $('input[name=price]').val();
 	const stamp = TimeStamp(new Date(Date.now()));
 	const _data = {
 		uid : stam +'/'+_tel+'/'+_name,
 		name : _name,
 		_tel : _tel,
 		price : price
 	}
 	IMP.request_pay({
 		pg : 'html5_inicis.INIpayTest',
 		pay_method : 'card',
 		merchant_uid : stamp+'/'+_tel+'/'+_name, // 타임스템프 + 전화번호 + 이름
 		name : _name,
 		amount : price,
 		buyer_tel : _tel
 	},function(rsp){
 		if(rsp.success){
 			alert('결제 완료');
 		}
 	});
 }
 //본인 확인 함수
 function certifi(){
 	if(check()){
 		return;
 	}
 	IMP.certification({
 		pg: 'inicis_unified.MIIiasTest',
 		merchant_uid : 'test-0003'
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
 	requestPay();
 });
$('#check_tel').click(function(){
	certifi();
});
$('#reserve_login').click(function(){
	location.href= "Login.do";
});
