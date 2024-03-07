
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
	$('body').css("overflow","auto"); /* 모달창 닫으면 스크롤 다시 생성 */
	$('.footer_modal').css("padding","10%"); /* 모달창 크기 원래대로 */
	$('.footer_modal').css('background-color', 'rgba(0, 0, 0, 0.4)'); // 배경 원래대로
	$('.moal_cancle').css('background-color', 'transparent'); // x버튼 원래대로
});
$(document).mouseup(function(e){
	const modal = $('.footer_modal');
	if(modal.hasClass('modal_on')&&modal.has(e.target).length == 0){
		modal.removeClass('modal_on');
		$('main').css('opacity', '1');
		$('header').css('opacity', '1');
		$('footer').css('opacity', '1');
		$('body').css("overflow","auto"); /* 모달창 닫으면 스크롤 다시 생성 */
		$('.footer_modal').css("padding","10%");/* 모달창 크기 원래대로 */
		$('.footer_modal').css('background-color', 'rgba(0, 0, 0, 0.4)'); // 배경 원래대로
		$('.moal_cancle').css('background-color', 'transparent'); // x버튼 원래대로
	}
})