$('.ImgUploader_ImgDelete').click(function(){
	const t = $(this).closest('div').prevAll().length;
	const _d = $('.ImgUploader_ImgDelete:eq('+t+')').val();
	const data = {
		uploader : _d.split(',')[0],
		no : _d.split(',')[1],
		url : _d.split(',')[2]
	}
	alert(data.uploader +'\n'+data.no+'\n'+data.url);
	
	$.ajax({
		type: "post",
		url : "DeleteImg.do",
		data : data,
		success : function(data){
			if(data >0){
				alert('이미지를 삭제 했습니디.');
				$('#img_secsion').find('div:eq('+t+')').remove();
				return;
			}
		},
		error : function(data){
			alert('err = '+data);
		}
	});
});

$('input[name=file]').change(function(){
	const size = $('#img_secsion').find('div').length;
	if(size >=5){
		alert('이미지는 5개 까지만 업로드 가능합니다.');
		$(this).val('');
		return;
	}
});