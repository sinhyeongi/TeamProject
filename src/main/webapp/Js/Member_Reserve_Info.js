
$('#Reserve_Info_submit').click(function(){
	const t = $('input[name=reserve_info_radio]:checked').val();
	//if(!t){alert('선택 후 취소하기 버튼을 이용해 주세요');}
	cancelPay(1,1,1);
});
function cancelPay(_uid,_price,_reason){
	$.ajax({
		type : "post",
		url : "reserve_cancel.do",
		success : function(data){
			alert(data);
		},
		error : function(error){
			alert('error = '+error);
		}
	})
}