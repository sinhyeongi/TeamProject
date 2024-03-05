let nickCheck = 0; //중복조회 및 회원가입 버튼
let idCheck = 0;	//아이디중복조회
let emailCheck = false;
let phoneCheck = false;
let isInsertButtonPress = false;
//닉네임 중복체크
function NicknameDuplicatedCheck(nickname){
	console.log(nickname);
	if(nickCheck === 1){
		activeErr(".errorMsg_nickname","blue","완료되었습니다.");
		return;
	}
	if(nickname.value.trim() === ""){
		nickname.focus();
		activeErr(".errorMsg_nickname","red","닉네임을 입력해주세요.");
		return;
	}
	fetch("DuplicatedCheck.do",{
		method : "POST",
		headers:{
			"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    	},
    	body: "nickname="+nickname.value,
	})
	.then(response => response.text())
	.then(data =>{
		if(data === "Duplicated"){
			nickname.focus();
			activeErr(".errorMsg_nickname","red","중복된 닉네임 입니다.");
			nickCheck = 0;
		}else{
			document.getElementById("nickname").classList.add("check");
			activeErr(".errorMsg_nickname","blue","사용 가능한 닉네임 입니다.");
			nickCheck = 1;
		}
	}).catch(error => console.log(error));
}

function IdDuplicatedCheck(ids){
	if(idCheck === 1){
		activeErr(".errorMsg_id","blue","완료되었습니다.");
		return;
	}
	console.log(ids);
	if(ids.value.trim() === ""){
		document.getElementById("ids").focus();
		activeErr(".errorMsg_id","red","아이디를 입력해주세요");
		ids.parentElement.classList.add("error");
		return;
	}
	if(ids.value.length < 4){
		ids.focus();
		activeErr(".errorMsg_id","red","4글자 이상 입력해주세요.");
		ids.parentElement.classList.add("error");
		return;
	}
	fetch("DuplicatedCheck.do",{
		method : "POST",
		headers:{
			"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    	},
    	body: "id="+ids.value,
	})
	.then(response => response.text())
	.then(data =>{
		if(data === "Duplicated"){
			ids.focus();
			activeErr(".errorMsg_id","red","중복된 아이디 입니다.");
			ids.parentElement.classList.add("error");
			idCheck = 0;
		}else{
			activeErr(".errorMsg_id","blue","사용 가능한 아이디 입니다.");
			ids.parentElement.classList.add("check");
			idCheck = 1;
		}
	}).catch(error => console.log(error));
}


//아이디 내용 변경시 중복체크 다시.
const idInputBox = document.getElementById("ids");
if(idInputBox){
	idInputBox.addEventListener("keydown",()=>{
		idInputBox.parentElement.classList.remove("check");
		idInputBox.parentElement.classList.remove("error");
		document.querySelector(".errorMsg_id").classList.remove("active");
		idCheck = 0;
	});
}


//닉네임 내용 변경시 중복체크 다시.
const nicknameInputBox = document.getElementById("nickname");
if(nicknameInputBox){
	nicknameInputBox.addEventListener("keydown",()=>{
		nicknameInputBox.parentElement.classList.remove("check");
		nicknameInputBox.parentElement.classList.remove("error");
		document.querySelector(".errorMsg_nickname").classList.remove("active");
		nickCheck = 0;
	});
}

//회원가입 버튼
function insert(form){

	if(isInsertButtonPress)return;
	let id = document.getElementById("ids");
	let pw = document.getElementById("pw");
	let email = document.getElementById("email");
	let name = document.getElementById("name");
	const birth = document.getElementById("input_birth_box");
	let birthYear = document.getElementById("birth_year");
	let birthMonth = document.getElementById("birth_month");
	let birthDay = document.getElementById("birth_day");
	let phone = document.getElementById("phone");
	let address = document.getElementById("address");
	let detailAddress = document.getElementById("detailAddress");
	
	if(id && id.value.trim() === ""){
		id.focus();
		id.parentElement.classList.add("error");
		document.querySelector(".errorMsg_id").classList.add("active");
		return;
	}else if(id){
		document.querySelector(".errorMsg_id").classList.remove("active");
		id.parentElement.classList.remove("error");
	}
	if(pw && pw.value.trim() === ""){
		pw.focus();
		pw.parentElement.classList.add("error");
		activeErr(".errorMsg_pw","red","비밀번호를 입력해주세요.");
		return;
	}else if(pw && pw.value.length < 8){
		pw.focus();
		activeErr(".errorMsg_pw","red","8글자 이상 입력해주세요.");
		pw.parentElement.classList.add("error");
		return;
	}else if(pw){
		pw.parentElement.classList.remove("error");
		document.querySelector(".errorMsg_pw").classList.remove("active");
	}
	if(email && !email.value.match(/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/)){
		email.focus();
		email.parentElement.classList.add("error");
		document.querySelector(".errorMsg_email").classList.add("active");
		return;
	}else if(email){
		email.parentElement.classList.remove("error");
		document.querySelector(".errorMsg_email").classList.remove("active");
		fetch("DuplicatedCheck.do",
		{
			method : "POST",
			headers:{
				"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
	    	},
			body : "email="+email.value,
		})
		.then(response => response.text())
		.then(data =>{
			if(data==="Duplicated"){
				activeErr(".errorMsg_email","red","이미 가입된 이메일입니다.");
				emailCheck = false;
			}else{
				emailCheck = true;
			}
		});
		
		if(!emailCheck)return;
	}
	
	if(name && name.value.trim() === ""){
		name.focus();
		name.parentElement.classList.add("error");
		document.querySelector(".errorMsg_name").classList.add("active");
		return;
	}else if(name){
		document.querySelector(".errorMsg_name").classList.remove("active");
		name.parentElement.classList.remove("error");
	}
	if(birth && (birthYear.value === "출생 연도" || birthMonth.value === "월" || birthDay.value ==="일")){
		birth.parentElement.classList.add("error");
		document.querySelector(".errorMsg_birth").classList.add("active");
		return;
	}else if(birth){
		document.querySelector(".errorMsg_birth").classList.remove("active");
		birth.parentElement.classList.remove("error");
		addBirth(form);
	}
	if(phone && !phone.value.match(/010-\d{4}-\d{4}$/)){
		phone.focus();
		activeErr(".errorMsg_phone","red","연락처 형식에 맞게 입력해주세요.")
		phone.parentElement.classList.add("error");
		return;
	}else if(phone){
		document.querySelector(".errorMsg_phone").classList.remove("active");
		phone.parentElement.classList.remove("error");
		fetch("DuplicatedCheck.do",
		{
			method : "POST",
			headers:{
				"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
	    	},
			body : "phone="+phone.value,
		})
		.then(response => response.text())
		.then(data =>{
			if(data==="Duplicated"){
				activeErr(".errorMsg_phone","red","이미 가입된 연락처입니다.");
				phoneCheck = false;
			}else{
				phoneCheck = true;
			}
		});
		if(!phoneCheck)return;
	}
	if(address && address.value.trim() === ""){
		activeErr(".errorMsg_address","red","주소를 입력해주세요.")
		document.querySelector(".errorMsg_address").classList.add("active");
		return;
	}else if(address){
		document.querySelector(".errorMsg_address").classList.remove("active");
		document.querySelector("#address_box").classList.remove("error");
	}
	if(address && detailAddress.value.trim() === ""){
		activeErr(".errorMsg_address","red","상세주소를 입력해주세요.")
		document.querySelector("#address_box").classList.add("error");
		return;
	}else if(address){
		document.querySelector(".errorMsg_address").classList.remove("active");
		document.querySelector("#address_box").classList.remove("error");
	}
	if(id && idCheck ===0){
		activeErr(".errorMsg_id","red","아이디 중복체크를 해주세요.");
		return;
	}
	if(nickCheck ===0){
		activeErr(".errorMsg_nickname","red","닉네임 중복체크를 해주세요.");
		return;
	}
	//회원가입 중복입력 방지
	isInsertButtonPress = true;
	//주소 합치기
	addAddress(form);
	//폼 내용 서밋
	form.submit();
}
function addBirth(form){
	form.birth.value = 
			form.birth_year.value
			+"-"
			+(form.birth_month.value < 10 ? 0 + form.birth_month.value : form.birth_month.value)
			+"-"
			+(form.birth_day.value < 10 ? 0 + form.birth_day.value : form.birth_day.value)
}
function addAddress(form){
	
	form.address.value =
		form.address.value
		+" "
		+form.detailAddress.value
		+","
		+form.postcode.value;
}
function addClassError(){
	
}
function activeErr(element,color,msg){
	document.querySelector(element).classList.add("active"); //msg 활성화
	document.querySelector(element).style.color = color;     //msg 색
	document.querySelector(element).textContent = msg;		 //msg 문구
}







//"출생연도" select box option list 동적 생성
const birthYearEl = document.querySelector(".birth_box_year");
const birthMonthEl = document.querySelector(".birth_box_month");
const birthDayEl = document.querySelector(".birth_box_day");
// option list 생성 여부 확인
let nowYear = (new Date()).getFullYear();
let isYearOptionExisted = false;
let isMonthOptionExisted = false;
let isDayOptionExisted = false;

//생년월일 존재시
if(birthYearEl){
	// 년도 생성
	birthYearEl.addEventListener("click",function (){
		//year list 없을 때
		if(!isYearOptionExisted){
			isYearOptionExisted = true;
			for(let i = nowYear-100; i<= nowYear; i++){
				// option element 생성
				const Option = document.createElement("option");
				Option.setAttribute("value", i);
				Option.innerText = i;
				//birthYearEL의 자식 요소로 추가
				this.appendChild(Option);
			}
		}
	});
	// 월 생성
	birthMonthEl.addEventListener("click",function (){
		//month list 없을 때
		if(isYearOptionExisted && !isMonthOptionExisted){
			isMonthOptionExisted = true;
			for(let i = 1; i<= 12; i++){
				// option element 생성
				const Option = document.createElement("option");
				Option.setAttribute("value", i);
				Option.innerText = i;
				//birth_box_month의 자식 요소로 추가
				this.appendChild(Option);
			}
		}
	});
	// 일 생성
	birthDayEl.addEventListener("click",function (){
		//day list 없을 때
		if(birthYearEl.value !== "출생 연도" && birthMonthEl.value !== "월" && !isDayOptionExisted){
			isDayOptionExisted = true;
			let lastday = new Date(birthYearEl.value,birthMonthEl.value,0);
			lastday = lastday.getDate();
			
			for(let i = 1; i<= lastday; i++){
				// option element 생성
				const Option = document.createElement("option");
				Option.setAttribute("value", i);
				Option.innerText = i;
				//birth_box_day의 자식 요소로 추가
				this.appendChild(Option);
			}
		}
	});
}


/* 주소 api */
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
             if(data.userSelectedType === 'R'){
                 //법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
              document.getElementById("extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress").focus();
        }
    }).open();
}
