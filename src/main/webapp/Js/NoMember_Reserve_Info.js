const regex = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/; //전화번호 정규표현식
const regex2 = /^[가-힣a-zA-Z]+$/; //한글+영문 정규표현식
function check(){
	if($('input[name=name]').val() == null || $('input[name=name]').val() == ''){
		alert('이름을 입력 해주세요');
		$('input[name=name]').focus();
		return true;
	}else if(regex2.test($('input[name=phone]').val())){
		alert('이름을 다시 입력 해주세요');
		$('input[name=name]').val('');
		return true;
	}else if($('input[name=phone]').val() == null || $('input[name=phone]').val() == ''){
		alert('전호번호를 입력 해주세요');
		$('input[name=phone]').focus();
		return true;
	}else if(!regex.test($('input[name=phone]').val())){
 		alert('전화번호를 형식에 맞게 입력해주세요');
 		$('input[name=phone]').val('');
 		return true;
 	}
 	return false;
}
$('input[name=name]').keydown(function(e){
	if(e.keyCode == 13){
		$('input[name=phone]').focus();
	}
});
$('input[name=phone]').keydown(function(e){
	if(e.keyCode == 13){
		$('#nomember_reserve_info_btn').click();
	}
})
$('#nomember_reserve_info_btn').click(function(){
	if(check()){
		return;
	}
	location.href = location.href+"?phone="+$('input[name=phone]').val()+'&name='+$('input[name=name]').val();
})
	