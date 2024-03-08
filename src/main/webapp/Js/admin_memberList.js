const selCategory = document.querySelector(".category");
const $searchValue = document.querySelector(".searchValue");
const cate = document.querySelector("#cate");
console.log(cate);

if(cate.value === 'level'){
	$searchValue.innerHTML =
		`<select id="search" name="searchValue" style="width: 173px; height: 19px">
        <option value="0">일반회원</option>
        <option value="100">호스트신청회원</option>
        <option value="900">호스트</option>
   		</select>`;
}else{
	$searchValue.innerHTML = `<input type="text" id="search" name="searchValue"/>`;
}

selCategory.addEventListener("change",event=>{
	if(event.target.value === 'level'){
		$searchValue.innerHTML =
		`<select id="search" name="searchValue" style="width: 173px; height: 19px">
        <option value="0">일반회원</option>
        <option value="100">호스트신청회원</option>
        <option value="900">호스트</option>
   		</select>`;
	}else{
		$searchValue.innerHTML = `<input type="text" id="search" name="searchValue"/>`;
	}
});
function modal_info(no,name){
	$('.footer_modal').addClass('modal_on');
	$('body').css("overflow","hidden");
	const _data = {
		Modal_page : name,
		no : no
	}
	
	$.ajax({
		type : "post",
		url : "admin_Modal_memberInfo.do",
		data : _data, 
		success : function(data){
			$('.modal_main').html(data);
		},
		error : function(err){
			alert("err = "+err);
		}
	});
}

function modal_applyHostInfo(no,name){
	$('.footer_modal').addClass('modal_on');
	$('body').css("overflow","hidden");
	const _data = {
		Modal_page : name,
		no : no
	}
	
	$.ajax({
		type : "post",
		url : "admin_Modal_applyHost.do",
		data : _data, 
		success : function(data){
			$('.modal_main').html(data);
		},
		error : function(err){
			alert("err = "+err);
		}
	});
}