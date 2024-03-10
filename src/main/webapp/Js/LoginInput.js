const inputId = document.querySelector("#input_id");
const inputPw = document.querySelector("#input_pw");

let checkId = false;
let checkPw = false;

$("#input_id").on("keyup" , event =>{
	if(inputId.value.length >= 4){
		checkId = true;
		document.querySelector(".input_id_wrapper").classList.remove("error");
		document.querySelector(".errorMsg_id").classList.remove("active");
		if(checkId && checkPw){
			document.querySelector(".login_btn").removeAttribute("disabled");
		}
	} else{
		checkId = false;
		errorMsgId("아이디를 입력해주세요.")
	}
	if(event.target.value.search(/\s/) != -1){//공백있음
		checkId = false;
		errorMsgId("공백문자는 사용 할 수 없습니다.")
	}
});

$("#input_pw").on("keyup" , event =>{
	if(inputPw.value.length >= 4){ //Test를위해 8-> 4 로변경
		checkPw = true;
		document.querySelector(".input_pw_wrapper").classList.remove("error");
		document.querySelector(".errorMsg_pw").classList.remove("active");
		if(checkId && checkPw){
			document.querySelector(".login_btn").removeAttribute("disabled");
		}
	} else{
		checkPw = false;
		errorMsgPw("비밀번호를 입력해주세요.")
	}
	if(event.target.value.search(/\s/) != -1){//공백있음
		checkPw = false;
		errorMsgPw("특수문자는 # & + - % @ = : ; , . ” ^ ' ~ _ | ! @ * $ < > ( ) [ ] 중에서 입력해주세요.")
	}
});

function errorMsgId(msg){
	document.querySelector(".errorMsg_id").textContent=msg;
	document.querySelector(".login_btn").setAttribute("disabled","");
	document.querySelector(".input_id_wrapper").classList.add("error");
	document.querySelector(".errorMsg_id").classList.add("active");
}
function errorMsgPw(msg){
	document.querySelector(".errorMsg_pw").textContent=msg;
	document.querySelector(".login_btn").setAttribute("disabled","");
	document.querySelector(".input_pw_wrapper").classList.add("error");
	document.querySelector(".errorMsg_pw").classList.add("active");
}
