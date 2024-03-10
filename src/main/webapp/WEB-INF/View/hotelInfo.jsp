<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>    
   
   <input type = "hidden" id="m_name" value="${m_vo.name }">
   <input type = "hidden" id="m_phone" value="${m_vo.phone}">
   <input type = "hidden" id="m_email" value="${m_vo.email }">
   
  <main class="hotelInfo_main">
    <div class="img_container">
      <div class="main_img">
        <img src="${ctx }/img/${imgList.get(0)}">
      </div>
      <div class="side_img">
        <div class="row">
          <div class="row_img"><img src="${ctx }/img/${imgList.get(1)}"></div>
          <div class="row_img"><img src="${ctx }/img/${imgList.get(2)}"></div>
        </div>
        <div class="row">
          <div class="row_img"><img class="top_right_img" src="${ctx }/img/${imgList.get(3)}"></div>
          <div class="row_img"><img class="bottom_right_img" src="${ctx }/img/${imgList.get(4)}"></div>
        </div>
      </div> <!-- side_img -->
    </div> <!-- img_container -->
    <input type="hidden" id="y" value ="${hotel.y}"/>
    <input type="hidden" id="x" value ="${hotel.x}"/>
    <div class="info_contents">
      <div class="right_map">
        <div id="mapHead">
          <div id="map">
         	<div class="full_btn">
       		 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px" height="16px"><path d="M32 32C14.3 32 0 46.3 0 64v96c0 17.7 14.3 32 32 32s32-14.3 32-32V96h64c17.7 0 32-14.3 32-32s-14.3-32-32-32H32zM64 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7 14.3 32 32 32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H64V352zM320 32c-17.7 0-32 14.3-32 32s14.3 32 32 32h64v64c0 17.7 14.3 32 32 32s32-14.3 32-32V64c0-17.7-14.3-32-32-32H320zM448 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v64H320c-17.7 0-32 14.3-32 32s14.3 32 32 32h96c17.7 0 32-14.3 32-32V352z"/></svg>
      		</div>
          </div>
          <div class="loc"><br>${hotel.address }</div>
        </div>
      </div>
      <div class="info_center">
        <div class="info_header">
          <div class="star">${hotel.star}성급</div>
          <h1 class="hotel_name">${hotel.name }</h2>
          <input type = "hidden" id="ho_name" value="${hotel.name }">
          <input type = "hidden" id="address" value="${hotel.address }">
            <div class="star_point"><span><img width="18" height="18" src="https://img.icons8.com/fluency/48/star--v1.png" alt="star--v1"/> ${hotel.star_point }</span> 
            <span>&nbsp; ${hotel.reviewCount }명 평가</span>
              <span onclick="scrollToReview()"><a href="#">리뷰보기</a></span>
            </div>
            <div class="two_review">
              <!-- 리뷰 두개정도 보여줄 공간 -->
              <c:forEach var="item" items="${reviewList}" varStatus="rv">
               <c:if test="${rv.index < 2}">
                <c:if test="${rv.index==0 }">
              <div class="first_rv" onclick="scrollToReview()">
                <p>
                <img width="13" height="13" src="https://img.icons8.com/material/24/quote-left--v1.png" alt="quote-left--v1"/>
                	${item.content }
                </p>
                <span class="nick"> ${item.nickname } </span>
                <span class="w_day"> ${item.wday } </span>
              </div>
              </c:if>
              <c:if test="${rv.index==1 }">
              <div class="second_rv" onclick="scrollToReview()">
                <p>
                <img width="13" height="13" src="https://img.icons8.com/material/24/quote-left--v1.png" alt="quote-left--v1"/>
                	${item.content }
                </p>
                <span class="nick"> ${item.nickname } </span>
                <span class="w_day"> ${item.wday } </span>
              </div>
               </c:if>
              </c:if>
              </c:forEach>
              <div class="gogo_rv"> 
               <img width="15px"src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAACXBIWXMAAAsTAAALEwEAmpwYAAAArUlEQVR4nNXWPQrCQBCG4fcEsQkJ6oY0ksaT5ZaxE2wVf9HKFF7CIKwgsulmPnRg6geGb2cWfqQmwArYAZUXkgFr4Bn74oW1H8i7z0CwhvI4shQ2t8aKEezkgZXAfgSbWWMhhuEbO3pgr8RdVVgN3BLYAZhaYwvgrsIaoFdhS+CRwDZ/CTWK0UnCUCviXSkebFCsoFKxVAvFmchVh69VnfJM9Tkhfrc6YOuJmNYA6EaADfD8J8gAAAAASUVORK5CYII=">
              </div>
            </div>
            
            <hr />
            
            <div class="facility">
              <div class="fac_header">부대시설</div>
              <div class="fac_main">${hotel.fac }</div>
            </div>
            <hr />
        </div> <!-- info_header -->
        
        <div class="select_room">
          <h4>객실 선택</h4>
         <c:forEach var="one_ro" items="${room }">
          <div class="one_room">
            <div class="room_img">
                <img src="${ctx }/img/${one_ro.url.get(0)}"> 
            </div>
            <div class="room_info">
              <div class="room_info_header">
                <h3>${one_ro.name }</h3>
                <div class="detail_info">상세 정보 ></div>
                <input type="hidden" id="ro_bedinfo" value="${one_ro.bedinfo }">
                <input type="hidden" id="ro_occ" value="${one_ro.occ }">
                <input type="hidden" id="ro_ame" value="${one_ro.amenities }">
              </div>
              <div class="room_info_center">
                <div class="left">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="11" height="10">
                    <path
                      d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z" />
                  </svg>
                  <span class="time">입실 ${hotel.checkin }<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;퇴실 ${hotel.checkout }</span>
                </div>
                <div class="right">
                  <p>${one_ro.price }원</p>
                  <div class="qty">남은 객실 ${one_ro.total_qty }개</div>
                  <button class="reserve_room" onclick="location.href='${ctx}/reserve.do?no=${one_ro.no }'">객실 예약</button>
                </div>
              </div>
              <div class="room_info_footer">
                <div class="left">객실정보<br><br>추가정보</div>
                <div class="right">기준 ${one_ro.occ }인<br><br>인원 추가 가능 (추가 비용 발생)</div>
              </div>
            </div>
          </div>
		</c:forEach>
        </div> <!-- select_room -->
        
		<hr/>
		
		 <div class="room_use_info">
          <h4> 숙소 이용 정보</h4>
          <ul class="info_ul">
            <div>기본정보</div>
            <li> 체크인 : ${hotel.checkin } | 체크아웃 : ${hotel.checkout}</li>
                <input type ="hidden" id="ho_checkIn" value = "${hotel.checkin }">
                <input type ="hidden" id="ho_checkOut" value = "${hotel.checkout }">
            <li>무료 Wi-Fi</li>
            <li>전 객실 금연</li>
            <li><span class="amenity">일회용품 사용 규제 정책으로 인해, 2024년 3월 중으로 욕실용품 3종(샴푸, 컨디셔너, 바디워시) 은 다회용으로 제공, 일회용품(칫솔, 치약,
                면도기 등)
                유상 판매 전환 예정</span>
            </li>
          </ul>
          <ul class="info_ul">
            <div>인원 추가 정보</div>
            <li>기준인원 외 추가 시, 1인 40,000원(만 13세 이상~성인), 20,000원(37개월 이상~만 12세 이하), <span class="young">37개월 미만 무료</span>
            </li>
            <li>침대 추가: 호텔 문의(단, 재고 상황에 따라 불가할 수 있음)</li>
            <li>재고 가능 시, 침구(이불/담요) 추가 무료</li>
            <li>영유아 인원수 포함/최대인원 초과 불가</li>
            <li>현장 결제 및 추가 비용 프론트 문의</li>
          </ul>
          <ul class="info_ul">
            <div>투숙객 혜택</div>
            <li>실내 부대시설 무료 이용 가능(레스토랑 제외)</li>
            <li>짐 보관 서비스 무료</li>
          </ul>
          <ul class="info_ul">
            <div>부대시설 정보</div>
            <li>호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역 당국 등의 규제, 조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다</li>
            <li>모든 부대시설의 운영 시간 / 07:00 ~ 22:00</li>
            <li>룸서비스</li>
            <li>부대시설 운영시간은 호텔 사정에 따라 변경될 수 있으며, 상세 내용은 공식홈페이지 참고 부탁드립니다</li>
          </ul>
          <ul class="info_ul">
            <div>조식 정보</div>
            <li>성인 1인 50,000원 , 소인 (49개월 이상~초등학생) 30,000원, <span class="young">49개월 미만 무료</span></li>
            <li>현장결제 및 프론트 문의</li>
          </ul>
          <ul class="info_ul">
            <div>취소 및 환불 규정</div>
            <li><span class="heavy">[비수기]</span></li>
            <li>체크인 기준 2일 전 : 100% 환불</li>
            <li>체크인 기준 1일 전 : 90% 환불</li>
            <li>체크인 당일 및 No-show : 80% 환불</li>
            <li><span class="heavy">[성수기]</span> 매년 5월 ~ 10월, 12월 24일~31일</li>
            <li>체크인 기준 10일 전 및 예약 당일 : 100% 환불</li>
            <li>체크인 기준 9일 전 ~ 7일 전 : 90% 환불</li>
            <li>체크인 기준 6일 전 ~ 5일 전 : 70% 환불</li>
            <li>체크인 기준 4일 전 ~ 3일 전 : 50% 환불</li>
            <li>체크인 기준 2일 전 ~ 당일 및 No-show : 20% 환불</li>
            <li><span class="warn">연박 시, 전체 금액에 대해 취소 수수료 적용됩니다</span></li>
            <li><span class="warn">당일 취소 및 No-show는 앱 내 취소가 불가하므로, 당사 고객센터를 통하여 취소 및 환불 문의 바랍니다</span></li>
            <li>취소, 환불 시 수수료가 발생할 수 있습니다</li>
          </ul>
          <ul class="info_ul">
            <div>확인사항 및 기타</div>
            <li><span class="heavy">체크인 시 Deposit(보증금) 요구할 수 있으며, 퇴실 시 전액 환불됩니다</span></li>
            <li>(단, 유료 서비스 이용 및 기물 파손 시 청구될 수 있음)</li>
            <li>최대인원 초과시 입실 불가합니다</li>
            <li>객실 가는 세금, 봉사료가 포함된 금액입니다</li>
            <li>미성년자의 경우 보호자의 동행 없이 투숙 불가합니다</li>
          </ul>
          <hr />
          <h4>취소 및 환불 규정</h4>
          <ul class="info_ul">
            <li><span class="heavy">객실별 취소 정책이 상이하니 객실 상세정보에서 확인해주세요.</span></li>
          </ul>
        </div> <!-- room_use_info -->
        <hr />
        <div class="host_info" onclick="show_host_info()">
          <h4>판매자 정보</h4>
          <div class="arrow_right"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
              <path
                d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z" />
            </svg>
          </div>
        </div> <!-- host_info -->
        
        <hr />
      </div> <!-- info_center -->
    </div> <!-- info_contents -->
    
    <div class="info_footer">
      <div class="footer_map">
      	<h4> 위치 </h4>
      	<div id="wide_map">
      	 <div class="wide_full_btn">
       	  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px" height="16px"><path d="M32 32C14.3 32 0 46.3 0 64v96c0 17.7 14.3 32 32 32s32-14.3 32-32V96h64c17.7 0 32-14.3 32-32s-14.3-32-32-32H32zM64 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7 14.3 32 32 32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H64V352zM320 32c-17.7 0-32 14.3-32 32s14.3 32 32 32h64v64c0 17.7 14.3 32 32 32s32-14.3 32-32V64c0-17.7-14.3-32-32-32H320zM448 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v64H320c-17.7 0-32 14.3-32 32s14.3 32 32 32h96c17.7 0 32-14.3 32-32V352z"/></svg>
      	 </div>
      	</div> <!-- wide_map -->
      	 <div class="footer_loc">${hotel.address }</div>
      </div> <!-- footer_map  -->
      
      <div class="all_review">
      	<div class="review_header">
      	   <div class="star_point2">
      	   <span><img width="18" height="18" src="https://img.icons8.com/fluency/48/star--v1.png" alt="star--v1"/> 리얼 리뷰 ${hotel.star_point }</span> 
            <span>&nbsp; ${hotel.reviewCount }명 평가</span>
            </div> <!-- star_point2 -->
            <div class="upDesc">추천순</div>
      	</div> <!-- review_header -->
      	
      	<hr/>
      	<c:if test="${hotel.reviewCount eq 0}">
      		<div class="no_rv">
      		<h2> 아직 작성된 리뷰가 없습니다 </h2>
      		<p onclick="href=''">리뷰 작성하러 가기</p>
      		</div>
      	</c:if>
      	<c:forEach var="one_rv" items="${reviewList }">
      	 <c:forEach var="one_ro" items="${room }">
      	 <c:if test="${one_rv.room_no eq one_ro.no }">
      	 <div class="review_main">
      		<div class="left_rv">
      			<div><span class="user">이용자</span></div>
      			<div class="rv_nick">${one_rv.nickname }</div>
      			 <div class="rv_rec">
      			  <span class="up_btn">
      			   👍
      			   <input type="hidden" class="rv_no" value="${one_rv.no }">
      			   <input type="hidden" class="review_cnt" value="${one_rv.count }">
      			   <input type="hidden" class="review_nick" value="${one_rv.nickname }">
      			  </span> 이 리뷰 추천하기 
      			 </div>
      		</div> <!-- left_rv -->
      		<div class="right_rv">
      			<div class="r_rv_header">
      			  <div class="rating" id="rating">
      			   <input type="hidden" class="star_p" value="${one_rv.star_point }">
      			  </div>
				  <span class="rv_wday">작성일 : ${one_rv.wday }</span>
				 </div> <!-- r_rv_header -->
				 <div class="r_rv_center">
				 	<div class="rv_img">
				 	 <c:forEach var="rv_url" items="${one_rv.url }"> 
				 	 <img class="rv_imgs" src="${ctx }/img/${rv_url}" onclick="clickImg(this)">
<%-- 				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_twin.png" onclick="clickImg(this)">
				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/b_deluxe_twin.png" onclick="clickImg(this)">
 				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/main.png" onclick="clickImg(this)">
				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_double.png" onclick="clickImg(this)"> --%>
				 	 </c:forEach> 
				 	</div> <!-- rv_img -->
				 	<div class="img_more_btn" onclick="showMoreImg(this)">
				 	  사진 더보기 
				 	 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M201.4 342.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 274.7 86.6 137.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"/></svg>
				 	</div>
				 	<div class="rv_room_name">
				 		${one_ro.name }
				 	</div>
				 	<div class="rv_contents">
				 		<p class="long_rv">
				 		${one_rv.content }
				 		</p>
				 		<div class="more_btn" onclick="toggleContent(this)">
				 		더보기
				 		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M201.4 342.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 274.7 86.6 137.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"/></svg>
				 		</div>
				 	</div>
				 </div> <!-- r_rv_center -->
				 <div class ="r_rv_footer">
				 	👍<span class="rec_cnt">${one_rv.count }</span>명이 이 리뷰를 추천했어요
				 </div> <!-- r_rv_footer -->
      		</div> <!-- right_rv -->
      	</div> <!-- review_main  -->
      		
      	<hr/>
      	 </c:if>
      	</c:forEach>
       </c:forEach>
      	
      </div> <!-- all_review -->
	</div> <!-- info_footer -->
  </main>
  
