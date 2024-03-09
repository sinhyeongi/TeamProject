<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main main_event">
	<%@ include file="./notice_nav.jsp" %>
	<div class="container">
		<button class="attendanceCheckbtn"> 출석체크 </button>	
	</div>
</main>
<script>
const acBtn = document.querySelector(".attendanceCheckbtn")
let isAttendanceCheckBtn = false;
function attendanceCheck(){
	if(isAttendanceCheckBtn === true){
		return;
	}
	location.href="attendanceCheckEvent.do";
}
</script>