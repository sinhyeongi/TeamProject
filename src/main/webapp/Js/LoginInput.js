const inputId = document.querySelector("#input_id");
const inputPw = document.querySelector("#input_pw");

let checkId = false;
let checkPw = false;

$("#input_id").on("keyup" , event =>{
	if(inputId.value.length > 8){
		checkId = true;
		document.querySelector(".login_btn").removeAttribute("disabled");
		console.log(document.querySelector(".input-wrapper"));
		document.querySelector(".input_id_wrapper").classList.remove("error");
	} else{
		checkId = false;
		document.querySelector(".login_btn").setAttribute("disabled","");
		document.querySelector(".input_id_wrapper").classList.add("error");
	}
});