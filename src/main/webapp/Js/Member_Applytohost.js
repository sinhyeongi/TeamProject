$('.applytohost_submit').click(function(){
	if(Check()){
		return;
	}
	$(this).attr('disabled',true);
	const id = $('input[name=id]').val();
	const name =  $('input[name=name]').val();
	const address =  $('input[name=address]').val();
	const tel =  $('input[name=tel]').val();
	const star =  $('input[name=star]').val();
	const fac =  $('input[name=fac]').val();
	const checkin =  $('input[name=checkin]').val();
	const checkout =  $('input[name=checkout]').val();
	const account = $('input[name=account]').val();
	const _data = {
		id : id,
		name : name,
		address : address,
		tel : tel,
		star : star,
		fac : fac,
		checkin : checkin,
		checkout : checkout,
		account : account
	}
	$.ajax({
		type:"post",
		url : "InsertHotel.do",
		data : _data,
		success : function(data){
			if(data == 1){
				alert(name+'호텔 등록요청 완료\n관리자 수락 후 메인 화면에 추가 됩니다.');
				location.href="Main.do";
			}
		},
		error : function(err){
			alert('err = '+err);
		}
	})
});
function Check(){
	const id = $('input[name=id]').val();
	const name =  $('input[name=name]').val();
	const address =  $('input[name=address]').val();
	const tel =  $('input[name=tel]').val();
	const star =  $('input[name=star]').val();
	const fac =  $('input[name=fac]').val();
	const checkin =  $('input[name=checkin]').val();
	const checkout =  $('input[name=checkout]').val();
	const account = $('input[name=account]').val();
	const tel_exp = /^(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]))-(\d{3,4})-(\d{4})$/;	
	const number_exp = /^[0-9]*$/;
	const account_reg = /^(\d{1,})(-(\d{1,})){1,}/;
	if(!id){
		alert('잠시 후 다시 이용부탁드립니다.');
		location.href="Main.do";
		return true;
	}else if(!name){
		alert('호텔 이름을 입력해주세요');
		$('input[name=name]').focus();
		return true;
	}else if(!address){
		alert('주소를 입력해주세요');
		$('.addres_input').click();
		return true;
	}else if(!tel){
		alert('호텔 전화번호를 입력해주세요');
		$('input[name=tel]').focus();
		return true;
	}else if(tel_exp.test(tel) == false){
		alert('호텔 전화번호를 형식에 맞게 입력해주세여');
		$('input[name=tel]').val('');
		$('input[name=tel]').focus();
		return true;
	}else if(!star){
		alert('호텔 성급 입력해주세요');
		$('input[name=star]').focus();
		return true;
	}else if(number_exp.test(star) == false){
		alert('호텔 성급에 숫자만 입력해주세요');
		$('input[name=star]').val('');
		$('input[name=star]').focus();
		return true;
	}else if(star < 0 || star > 5){
		alert('호텔 성급을 다시 입력해주세요');
		$('input[name=star]').val(1);
		return true;
	}else if(!checkin){
		alert('체크인 시간을 입력해주세요');
		$('input[name=checkin]').focus();
		$('input[name=checkin]').click();
		return true;
	}else if(!checkout){
		alert('체크아웃 시간을 입력해주세요');
		$('input[name=checkout]').focus();
		$('input[name=checkout]').click();
		return true;
	}else if(!account){
		alert('계좌번호를 입력해주세요');
		$('input[name=account]').focus();
		return true;
	}else if(account_reg.test(account) == false){
		alert('계좌번호를 형식에맞게 입력해주세요');
		$('input[name=account]').val('');
		$('input[name=account]').focus();
		return true;
	}
	return false;
}
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
             if(data.userSelectedType === 'R'){
                 //법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
              document.getElementById("extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress").focus();
        }
    }).open();
}