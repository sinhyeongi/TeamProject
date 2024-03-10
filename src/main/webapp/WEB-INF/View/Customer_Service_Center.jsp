<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main main_CS">
<%@ include file="./notice_nav.jsp" %>
	<div class="container">
		<div class="section section_title">
			<h1 class="title">고객센터</h1>
			<p class="title_text">어려운 문제가 있으신가요?</p>
		</div>
		<div class="section section_callbox">
			<article class="callbox">
				<div>
					<button class="callbtn"><i class="fa fa-solid fa-phone fa-rotate-90"></i>1234-1234</button>
					<div class="callbox_text">
						<p>예약·취소 문의</p>
						<p>오전 9시 ~ 새벽 3시</p>
					</div>
				</div>
				<button class="askbtn"><i class="fa fa-solid fa-comment"></i>문의하기</button>
			</article>
		</div>
		<div class="section section_board_title">
			<h2>자주 묻는 질문</h2>
		</div>
		<div class="section section_board_category">
			<ul role="tablist">
				<li role="tab" aria-selected="true" value="TOP7">TOP7</li>
				<li role="tab" aria-selected="false"value="예약">예약</li>
				<li role="tab" aria-selected="false"value="결제">결제/영수증</li>
				<li role="tab" aria-selected="false"value="쿠폰">쿠폰</li>
				<li role="tab" aria-selected="false"value="포인트">포인트</li>
			</ul>
		</div>
		<div class="section section_boards">
			<ul class="boardlist" role="boardlist">
				<!-- <li>
					<div class="qabtn" role="button" label="[숙박] 예약을 취소 하고 싶어요.">
						<div class="qaflex">
							<h3>
								<span class="qaheader">Q</span>
								<p class="qatitle">[숙박] 예약을 취소 하고 싶어요.</p>
							</h3>
						</div>
						QA제목
						<div><i class="fas fa-duotone fa-angle-down"></i></div>
						화살표
					</div>
					QA 버튼 
					<div class="qacontent qacontent_container">
						<div class="qacontent qacontent_box">
							<div>
								<font face="arial" color="#252525">
									<span style="font-size: 13px">예약취소는  앱/웹 > 내정보 > 예약/구매내역에서 직접 가능합니다.</span>
								</font>
							</div>
							<div>
								<font face="arial" color="#252525">
									<span style="font-size: 13px">예약/결제 진행 당시 안내된 취소/환불 규정에 따라 처리되며, 취소수수료가 발생할 경우 취소수수료를 차감한 금액으로 환불 처리됩니다.</span>
								</font>
							</div>
						</div>
					</div>
					QA 내용
				</li> -->
			</ul>
		</div>
	</div>
	
</main>