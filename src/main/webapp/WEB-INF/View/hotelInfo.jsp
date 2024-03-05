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
          <div id="map"></div>
          <div class="loc"><br>제주특별자치도 서귀포시 색달동 2812-4</div>
        </div>
        <div class="full_btn">
       	 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="16px" height="16px"><path d="M32 32C14.3 32 0 46.3 0 64v96c0 17.7 14.3 32 32 32s32-14.3 32-32V96h64c17.7 0 32-14.3 32-32s-14.3-32-32-32H32zM64 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7 14.3 32 32 32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H64V352zM320 32c-17.7 0-32 14.3-32 32s14.3 32 32 32h64v64c0 17.7 14.3 32 32 32s32-14.3 32-32V64c0-17.7-14.3-32-32-32H320zM448 352c0-17.7-14.3-32-32-32s-32 14.3-32 32v64H320c-17.7 0-32 14.3-32 32s14.3 32 32 32h96c17.7 0 32-14.3 32-32V352z"/></svg>
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



      </div> <!-- info_center -->
    </div> <!-- info_contents -->


  </main>