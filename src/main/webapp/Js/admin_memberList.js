/**
 * 
 */
function modal_info(no,name){
	$('.footer_modal').addClass('modal_on');
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