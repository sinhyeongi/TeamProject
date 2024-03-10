const acBtn = document.querySelector(".attendanceCheckbtn");
acBtn.addEventListener("click",attendanceCheck)
let isAttendanceCheckBtn = false;
function attendanceCheck(){
	if(isAttendanceCheckBtn === true){
		return;
	}
	location.href="attendanceCheckEvent.do";
}
