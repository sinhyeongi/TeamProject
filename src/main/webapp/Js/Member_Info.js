let isFirst = false;
$('#out_member').click(function(){
	if(isFirst == false){
		modal_on('Login');
		return;
	}
	$('.footer_modal').addClass('modal_on');
});

