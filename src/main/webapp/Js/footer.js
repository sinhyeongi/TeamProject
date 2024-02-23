
//전화번호 클릭
$('.footer_btn_address').click(function(){
	alert('준비중');
});
// 문의하기
$('.footer_btn_seriveCenter').click(function(){
	$('.footer_modal').addClass('modal_on');
	$('main').css('opacity', '0.2');
	$('header').css('opacity', '0.2');
	$('footer').css('opacity', '0.2');
});

$('.moal_cancle').click(function(){
	$('.footer_modal').removeClass('modal_on');
	$('main').css('opacity', '1');
	$('header').css('opacity', '1');
	$('footer').css('opacity', '1');
});