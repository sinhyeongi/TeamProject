
const $file = document.querySelector('#file');


$file.addEventListener('change',function(){
	const parentElement = document.querySelector(".imgs");
	const imglength = parentElement.querySelectorAll("div").length;
	const ctx = document.querySelector('#contextPath').value;
	console.log(imglength);
	if(imglength >=5){
		alert('이미지는 5개 까지만 업로드 가능합니다.');
		$(this).val('');
		return;
	}else if(confirm('사진을 추가하시겠습니까?') ==false){
		$(this).val('');
		return;
	}
	let target = $('#ImgUpload_form')[0];
	const form = new FormData(target);
	$.ajax({
		type : "post",
		url : "ImgUpload.do",
		data : form,
		contentType : false,
		processData : false,
		success : function(data){
			alert('파일을 업로드 했습니다.');
			let addimg=document.createElement("div");
			addimg.innerHTML = `<img src="${ctx }/img/upload/${data}" disabled>`;
			parentElement.append(addimg);
			return;
		},
		error : function(data){
		alert('err = '+data);
		}
	})
});