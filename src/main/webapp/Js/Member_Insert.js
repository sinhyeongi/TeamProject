//"출생연도" select box option list 동적 생성
const birthYearEl = document.querySelector(".birth_box_year");
const birthMonthEl = document.querySelector(".birth_box_month");
const birthDayEl = document.querySelector(".birth_box_day");
// option list 생성 여부 확인
let nowYear = (new Date()).getFullYear();
let isYearOptionExisted = false;
let isMonthOptionExisted = false;
let isDayOptionExisted = false;
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
		console.log(birthYearEl.value);
		console.log(birthMonthEl.value);
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
