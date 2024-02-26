const inputId = document.querySelector("#input_id");
const inputPw = document.querySelector("#input_pw");

let checkId = false;
let checkPw = false;

$("#input_id").on("keyup" , event =>{
	if(inputId.value.length > 8){
		checkId = true;
		console.log(document.querySelector(".input-wrapper"));
		document.querySelector(".input_id_wrapper").classList.remove("error");
		document.querySelector(".errorMsg_id").classList.remove("active");
		if(checkId && checkPw){
			document.querySelector(".login_btn").removeAttribute("disabled");
		}
	} else{
		checkId = false;
		document.querySelector(".login_btn").setAttribute("disabled","");
		document.querySelector(".input_id_wrapper").classList.add("error");
		document.querySelector(".errorMsg_id").classList.add("active");
	}
});

$("#input_pw").on("keyup" , event =>{
	if(inputPw.value.length > 8){
		checkPw = true;
		document.querySelector(".input_pw_wrapper").classList.remove("error");
		document.querySelector(".errorMsg_pw").classList.remove("active");
		if(checkId && checkPw){
			document.querySelector(".login_btn").removeAttribute("disabled");
		}
	} else{
		checkPw = false;
		document.querySelector(".login_btn").setAttribute("disabled","");
		document.querySelector(".input_pw_wrapper").classList.add("error");
		document.querySelector(".errorMsg_pw").classList.add("active");
	}
});