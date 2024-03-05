<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>    
  <main class="hotelInfo_main">
    <div class="img_container">
      <div class="main_img">
        <img src="${ctx }/img/incheon/harborpark_hotel/harborpark_hotel.png">
      </div>
      <div class="side_img">
        <div class="row">
          <div class="row_img"><img src="${ctx }/img/incheon/harborpark_hotel/delux_double_citiview.png"></div>
          <div class="row_img"><img src="${ctx }/img/incheon/harborpark_hotel/delux_family_twin.png"></div>
        </div>
        <div class="row">
          <div class="row_img"><img class="top_right_img" src="${ctx }/img/incheon/harborpark_hotel/delux_triple.png"></div>
          <div class="row_img"><img class="bottom_right_img" src="${ctx }/img/incheon/harborpark_hotel/delux_twin_citiview.png"></div>
        </div>
      </div> <!-- side_img -->

    </div> <!-- img_container -->
    <div class="info_contents">
      <div class="right_map">
        <div id="mapHead">
          <div id="map">
         	<div class="full_btn">
       		 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px" height="16px"><path d="M32 32C14.3 32 0 46.3 0 64v96c0 17.7 14.3 32 32 32s32-14.3 32-32V96h64c17.7 0 32-14.3 32-32s-14.3-32-32-32H32zM64 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7 14.3 32 32 32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H64V352zM320 32c-17.7 0-32 14.3-32 32s14.3 32 32 32h64v64c0 17.7 14.3 32 32 32s32-14.3 32-32V64c0-17.7-14.3-32-32-32H320zM448 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v64H320c-17.7 0-32 14.3-32 32s14.3 32 32 32h96c17.7 0 32-14.3 32-32V352z"/></svg>
      		</div>
          </div>
          <div class="loc"><br>제주특별자치도 서귀포시 색달동 2812-4</div>
        </div>
      </div>
      <div class="info_center">
        <div class="info_header">
          <div class="star"> 5성급</div>
          <h1 class="hotel_name">제주신라호텔</h2>
            <div class="star_point"><span><img width="18" height="18" src="https://img.icons8.com/fluency/48/star--v1.png" alt="star--v1"/> 9.8</span> 
            <span>&nbsp; 489명 평가</span>
              <span><a href="#">리뷰보기</a></span>
            </div>
            <div class="two_review">
              <!-- 리뷰 두개정도 보여줄 공간 -->
              <div class="first_rv">
                <p>
                <img width="13" height="13" src="https://img.icons8.com/material/24/quote-left--v1.png" alt="quote-left--v1"/>
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima optio impedit nihil debitis vitae
                quia!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima optio impedit nihil debitis vitae
                quia!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima optio impedit nihil debitis vitae
                quia!
                </p>
                <span class="nick"> 행복한 곰돌이 </span>
                <span class="w_day"> 24.03.04 </span>
              </div>
              <div class="second_rv">
                <p>
                <img width="13" height="13" src="https://img.icons8.com/material/24/quote-left--v1.png" alt="quote-left--v1"/>
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima optio impedit nihil debitis vitae
                quia!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima optio impedit nihil debitis vitae
                quia!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima optio impedit nihil debitis vitae
                quia!
                </p>
                <span class="nick"> 졸린 강아지 </span>
                <span class="w_day"> 24.02.04 </span>
              </div>
            </div>
            <hr />
            <div class="facility">
              <div class="fac_header">부대시설</div>
              <div class="fac_main">피트니스 수영장 미니바 사우나 레스토랑 라운지</div>
            </div>
            <hr />
        </div> <!-- info_header -->
        
        <div class="select_room">
          <h4>객실 선택</h4>
          <div class="one_room">
            <div class="room_img">
              <img src="${ctx }/img/incheon/harborpark_hotel/delux_twin_harborview.png">
            </div>
            <div class="room_info">
              <div class="room_info_header">
                <h3>로얄스위트 트윈 오션 (Room Only)</h3>
                <div class="detail_info">상세 정보 ></div>
              </div>
              <div class="room_info_center">
                <div class="left">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="11" height="10">
                    <path
                      d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z" />
                  </svg>
                  <span class="time">입실 15:00<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;퇴실 11:00</span>
                </div>
                <div class="right">
                  <p>130000원</p>
                  <div class="qty">남은 객실 2개</div>
                  <button class="reserve_room">객실 예약</button>
                </div>
              </div>
              <div class="room_info_footer">
                <div class="left">객실정보<br><br>추가정보</div>
                <div class="right">기준 2인<br><br>인원 추가 가능 (추가 비용 발생)</div>
              </div>
            </div>
          </div>

          <div class="one_room">
            <div class="room_img">
              <img src="${ctx }/img/incheon/harborpark_hotel/delux_triple.png">
            </div>
            <div class="room_info">
              <div class="room_info_header">
                <h3>로얄스위트 트리플 (City View)</h3>
                <div class="detail_info">상세 정보 ></div>
              </div>
              <div class="room_info_center">
                <div class="left">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="11" height="10">
                    <path
                      d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z" />
                  </svg>
                  <span class="time">입실 15:00<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;퇴실 11:00</span>
                </div>
                <div class="right">
                  <p>185000원</p>
                  <div class="qty">남은 객실 5개</div>
                  <button class="reserve_room">객실 예약</button>
                </div>
              </div>
              <div class="room_info_footer">
                <div class="left">객실정보<br><br>추가정보</div>
                <div class="right">기준 3인<br><br>인원 추가 가능 (추가 비용 발생)</div>
              </div>
            </div>
          </div>

          <div class="one_room">
            <div class="room_img">
              <img src="${ctx }/img/incheon/harborpark_hotel/delux_double_citiview.png">
            </div>
            <div class="room_info">
              <div class="room_info_header">
                <h3>로얄스위트 트윈 오션 (Room Only)</h3>
                <div class="detail_info">상세 정보 ></div>
              </div>
              <div class="room_info_center">
                <div class="left">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="11" height="10">
                    <path
                      d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z" />
                  </svg>
                  <span class="time">입실 15:00<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;퇴실 11:00</span>
                </div>
                <div class="right">
                  <p>130000원</p>
                  <div class="qty">남은 객실 2개</div>
                  <button class="reserve_room">객실 예약</button>
                </div>
              </div>
              <div class="room_info_footer">
                <div class="left">객실정보<br><br>추가정보</div>
                <div class="right">기준 2인<br><br>인원 추가 가능 (추가 비용 발생)</div>
              </div>
            </div>
          </div>
          
           <div class="one_room">
            <div class="room_img">
              <img src="${ctx }/img/incheon/harborpark_hotel/delux_double_citiview.png">
            </div>
            <div class="room_info">
              <div class="room_info_header">
                <h3>로얄스위트 트윈 오션 (Room Only)</h3>
                <div class="detail_info">상세 정보 ></div>
              </div>
              <div class="room_info_center">
                <div class="left">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="11" height="10">
                    <path
                      d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z" />
                  </svg>
                  <span class="time">입실 15:00<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;퇴실 11:00</span>
                </div>
                <div class="right">
                  <p>130000원</p>
                  <div class="qty">남은 객실 2개</div>
                  <button class="reserve_room">객실 예약</button>
                </div>
              </div>
              <div class="room_info_footer">
                <div class="left">객실정보<br><br>추가정보</div>
                <div class="right">기준 2인<br><br>인원 추가 가능 (추가 비용 발생)</div>
              </div>
            </div>
          </div>
          
           <div class="one_room">
            <div class="room_img">
              <img src="${ctx }/img/incheon/harborpark_hotel/delux_double_citiview.png">
            </div>
            <div class="room_info">
              <div class="room_info_header">
                <h3>로얄스위트 트윈 오션 (Room Only)</h3>
                <div class="detail_info">상세 정보 ></div>
              </div>
              <div class="room_info_center">
                <div class="left">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="11" height="10">
                    <path
                      d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z" />
                  </svg>
                  <span class="time">입실 15:00<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;퇴실 11:00</span>
                </div>
                <div class="right">
                  <p>130000원</p>
                  <div class="qty">남은 객실 2개</div>
                  <button class="reserve_room">객실 예약</button>
                </div>
              </div>
              <div class="room_info_footer">
                <div class="left">객실정보<br><br>추가정보</div>
                <div class="right">기준 2인<br><br>인원 추가 가능 (추가 비용 발생)</div>
              </div>
            </div>
          </div>
        </div> <!-- select_room -->
        
		<hr/>
		
		 <div class="room_use_info">
          <h4> 숙소 이용 정보</h4>
          <ul class="info_ul">
            <div>기본정보</div>
            <li> 체크인 : 15:00 | 체크아웃 : 11:00</li>
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
            <li>취소, 환불 시 수수료가 발생할 수 있습니다</span></li>
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
        <div class="host_info">
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
      	 <div class="footer_loc">제주특별자치도 서귀포시 색달동 2812-4</div>
      </div> <!-- footer_map  -->
      <div class="all_review">
      	<div class="review_header">
      	   <div class="star_point2">
      	   <span><img width="18" height="18" src="https://img.icons8.com/fluency/48/star--v1.png" alt="star--v1"/> 리얼 리뷰 9.8</span> 
            <span>&nbsp; 489명 평가</span>
            </div> <!-- star_point2 -->
            <div class="upDesc">추천순</div>
      	</div> <!-- review_header -->
      	
      	<hr/>
      	
      	<div class="review_main">
      		<div class="left_rv">
      			<div><span class="user">이용자</span></div>
      			<div class="rv_nick">졸린 고양이</div>
      			<div class="rv_rec"><span class="up_btn">👍</span> 이 리뷰 추천하기 </div>
      		</div> <!-- left_rv -->
      		<div class="right_rv">
      			<div class="r_rv_header">
      			  <div class="rating" id="rating"></div>
				  <span class="rv_wday">작성일 : 2024.03.05</span>
				 </div> <!-- r_rv_header -->
				 <div class="r_rv_center">
				 	<div class="rv_img">
				 	<img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_double.png" onclick="clickImg(this)">
				 	<img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_twin.png" onclick="clickImg(this)">
				 	<img class="rv_imgs" src="${ctx }/img/seoul/silla/b_deluxe_twin.png" onclick="clickImg(this)">
 				 	<img class="rv_imgs" src="${ctx }/img/seoul/silla/main.png" onclick="clickImg(this)">
				 	<img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_double.png" onclick="clickImg(this)">
				 	</div> <!-- rv_img -->
				 	<div class="img_more_btn" onclick="showMoreImg(this)">
				 	 사진 더보기
				 	 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M201.4 342.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 274.7 86.6 137.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"/></svg>
				 	</div>
				 	<div class="rv_room_name">
				 		산 전망 스탠다드 트윈 룸
				 	</div>
				 	<div class="rv_contents">
				 		<p class="long_rv">
				 		로맨틱하고 침구 컨디션도 최고입니다✨ 서비스도 탁월했고, 상품 구성이 모두 알찼어요. 만족도 최고였습니다.
남자친구랑 첫 제주여행에서 신라를 왔었고, 둘 다 무척 좋았던 기억이 있어 좋은 일이 생기면 꼭 다시 제주신라에 방문하자고 약속했었어요. 타이밍 좋게 저희가 알아볼때쯤 여기어때에서 오픈런 패키지를 열어서 여러모로 무척 좋았습니다. 비가 왔는데 입구에서부터 편안하게 응대해주셨어요.  짐을 맡기고 컨시어지에서 우산을 빌려 점심식사하러 다녀왔습니다. 
산책로 사계절 내내 무척 예쁜 것 같아요. 오픈런 포함된 쁘띠카바나는 자동 예약되는데 저희는 오후 네시반으로 예약되어서 체크인하고 쉬다가 수영하니 좋더라구요. 실컷 수영하고 사우나로 몸 좀 말린 다음에 풀사이드 대기 걸어두고 씻고 나오니 딱 맞춰 입장가능했습니다. 신라호텔 짬뽕 인생짬뽕이라고 해서 저번 방문때 일부러 먹었었는데 이번에 먹은 게 더 맛있었어요. 엄청 맛있어서 둘 다 싹싹 먹었네요. 다 먹고 후식으로 딸기아이스크림도 완벽했습니다. 진짜 완전 풀로 즐긴 느낌이에요. 만족도 최고.. 
				 		</p>
				 		<div class="more_btn" onclick="toggleContent(this)">
				 		더보기
				 		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M201.4 342.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 274.7 86.6 137.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"/></svg>
				 		</div>
				 	</div>
				 </div> <!-- r_rv_center -->
				 <div class ="r_rv_footer">
				 	👍<span class="rec_cnt">3</span>명이 이 리뷰를 추천했어요
				 </div> <!-- r_rv_footer -->
      		</div> <!-- right_rv -->
      	</div> <!-- review_main  -->
      		
      	<hr/>
      	
      	      	<div class="review_main">
      		<div class="left_rv">
      			<div><span class="user">이용자</span></div>
      			<div class="rv_nick">졸린 고양이</div>
      			<div class="rv_rec"><span class="up_btn">👍</span> 이 리뷰 추천하기 </div>
      		</div> <!-- left_rv -->
      		<div class="right_rv">
      			<div class="r_rv_header">
      			  <div class="rating" id="rating"></div>
				  <span class="rv_wday">작성일 : 2024.03.05</span>
				 </div> <!-- r_rv_header -->
				 <div class="r_rv_center">
				 	<div class="rv_img">
				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_double.png" onclick="clickImg(this)">
				     <img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_twin.png" onclick="clickImg(this)">
				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/b_deluxe_twin.png" onclick="clickImg(this)">
 				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/main.png" onclick="clickImg(this)">
				 	 <img class="rv_imgs" src="${ctx }/img/seoul/silla/deluxe_double.png" onclick="clickImg(this)">
				 	</div> <!-- rv_img -->
				 	<div class="img_more_btn" onclick="showMoreImg(this)">
				 	 사진 더보기
				 	 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M201.4 342.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 274.7 86.6 137.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"/></svg>
				 	</div>
				 	<div class="rv_room_name">
				 		산 전망 스탠다드 트윈 룸
				 	</div>
				 	<div class="rv_contents">
				 		<p class="long_rv">
				 		로맨틱하고 침구 컨디션도 최고입니다✨ 서비스도 탁월했고, 상품 구성이 모두 알찼어요. 만족도 최고였습니다.
남자친구랑 첫 제주여행에서 신라를 왔었고, 둘 다 무척 좋았던 기억이 있어 좋은 일이 생기면 꼭 다시 제주신라에 방문하자고 약속했었어요. 타이밍 좋게 저희가 알아볼때쯤 여기어때에서 오픈런 패키지를 열어서 여러모로 무척 좋았습니다. 비가 왔는데 입구에서부터 편안하게 응대해주셨어요.  짐을 맡기고 컨시어지에서 우산을 빌려 점심식사하러 다녀왔습니다. 
산책로 사계절 내내 무척 예쁜 것 같아요. 오픈런 포함된 쁘띠카바나는 자동 예약되는데 저희는 오후 네시반으로 예약되어서 체크인하고 쉬다가 수영하니 좋더라구요. 실컷 수영하고 사우나로 몸 좀 말린 다음에 풀사이드 대기 걸어두고 씻고 나오니 딱 맞춰 입장가능했습니다. 신라호텔 짬뽕 인생짬뽕이라고 해서 저번 방문때 일부러 먹었었는데 이번에 먹은 게 더 맛있었어요. 엄청 맛있어서 둘 다 싹싹 먹었네요. 다 먹고 후식으로 딸기아이스크림도 완벽했습니다. 진짜 완전 풀로 즐긴 느낌이에요. 만족도 최고.. 
				 		</p>
				 		<div class="more_btn" onclick="toggleContent(this)">
				 		더보기
				 		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M201.4 342.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 274.7 86.6 137.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"/></svg>
				 		</div>
				 	</div>
				 </div> <!-- r_rv_center -->
				 <div class ="r_rv_footer">
				 	👍<span class="rec_cnt">3</span>명이 이 리뷰를 추천했어요
				 </div> <!-- r_rv_footer -->
      		</div> <!-- right_rv -->
      	</div> <!-- review_main  -->
      		
      	<hr/>
      	
      </div> <!-- all_review -->
	</div> <!-- info_footer -->
  </main>