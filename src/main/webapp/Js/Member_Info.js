let isFirst = false;


$('#out_member').click(function(){
	if(isFirst == false){
		modal_on('Login');
		return;
	}
	$('.footer_modal').addClass('modal_on');
});
$('#member_info_toogle-slider').change(function(){
	if($(this).is(':checked')){
		$(this).prev().text('정보 가리기');
		$('#member_check').find('span').html('정보 숨기기');
		$('#name').removeClass('member_info_hidden')
		$('#nickname').removeClass('member_info_hidden')
		$('#phone').removeClass('member_info_hidden')
		$('#birth').removeClass('member_info_hidden')
		return;
	}
	$(this).prev().html('정보 보기');
	$('#name').addClass('member_info_hidden');
	$('#nickname').addClass('member_info_hidden');
	$('#phone').addClass('member_info_hidden');
	$('#birth').addClass('member_info_hidden');
})