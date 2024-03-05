
$('input:radio[name=host_info_radio]').change(function(){
	const $div = $('#host_hotel_info_main')
	$div.animate({scrollTop:$div[0].scrollHeight},'1500');
	$('html,body').animate({scrollTop:document.body.scrollHeight},'1000');
});
$('#host_info_submit').click(function(){
	const t = $('input:radio[name=host_info_radio]:checked').closest('.host_hotel_info_content').prevAll().length;
	const _no = $('.host_hotel_info_content:eq('+t+')').find('.host_hotel_info_content_div').find('.host_hotel_no').text();
	location.href="host_hotel_mif.do?no="+_no;
});