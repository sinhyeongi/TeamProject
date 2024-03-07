
$('input:radio[name=host_info_radio]').change(function(){
	const $div = $('#host_hotel_info_main')
	$div.animate({scrollTop:$div[0].scrollHeight},'1500');
	$('html,body').animate({scrollTop:document.body.scrollHeight},'1000');
});
$('#host_info_submit').click(function(){
	const t = $('input:radio[name=host_info_radio]:checked').val();
	if(!t){
		alert('선택을 먼저 해주세요');
		return;
	}
	const target = $('input[name=host_info_radio]:checked').prevAll('.host_hotel_info_content_div');
	const _no = target.find('.host_hotel_no').text();
	location.href="host_hotel_mif.do?no="+_no;
});