$('input[name=modal_id]').val($('#id').val());

$('#modal_btn').click(function(){
	const _id = $('input[name=modal_id]').val();
	const _pw = $('input[name=modal_pw]').val();
	const _data = {
		id : _id,
		pw : _pw 
	}
	$.ajax({
		type: "POST",
		url : "LoginCheck.do",
		data : _data,
		success : function(res){
			if(res != 0){
				alert('ok');
				$('#Delete_user').css('display','block');
				$('#modal_btn').css('display','none');
			}
		},
		error : function(err){
			alert('err = '+err);
		}
	});
})
//네이버 , 카카오등 외부 아이디 탈퇴
$('#Delete_user_api').click(function(){
	if(check()){
		return;
	}
	const _id = $('input[name=modal_id]').val();
	const _data = {
		id : _id
	}
	Delete_user("DeleteUser_API.do",_data);
})
//자체 유저 탈퇴 
$('#Delete_user').click(function(){
	if(check()){
		return;
	}
	const _id = $('input[name=modal_id]').val();
	const _pw = $('input[name=modal_pw]').val();
	const _data = {
		id : _id,
		pw : _pw
	}
	Delete_user("DeleteUser.do",_data);
})
function check(){
	let ch = confirm('정말 탈퇴 하시겠습니까?');
	if(ch == false){
		return true;
	}
}
function Delete_user(_url,_data){
	$.ajax({
		type:"post",
		url : _url,
		data : _data,
		success : function(rsp){
			if(rsp > 0){
				alert('회원 탈퇴가 완료되었습니다.');
				location.href = "Main.do";
			}
		},
		error : function(err){
			alert('err = '+err);
		}
	})
}