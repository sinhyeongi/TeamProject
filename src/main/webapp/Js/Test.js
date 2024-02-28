	/* var geocoder = new kakao.maps.services.Geocoder();
	var callback = function(result,status){
		if(status === kakao.maps.services.Status.OK){
			console.log(result);
		}
	}
	geocoder.addressSearch('해남군 송지면',callback);
	*/
$('.test_btn').click(function(){
	const t = ($(this).closest('div').prevAll().length) -1 ;
	//alert(t);
	const _no = $('.no:eq('+t+')').text();
	const _address = $('.address:eq('+t+')').text();
	const _data = {
		 no : _no,
		 address : _address
	}
	$.ajax({
		type:"post",
		url : "Test_update.do",
		data : _data,
		success : function(data){
			if(data >=1 ){
			location.href = location.href;
			return;
			}
			alert('error');
		},
		error : function(err){
			alert(rsp);
		}
	});
	
});