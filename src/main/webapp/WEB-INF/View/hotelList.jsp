<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
  <div class="back">
    <i id="allow" class="fa fa-arrow-left"></i>
    &nbsp;&nbsp;&nbsp;<span>모든 호텔 목록</span>
  </div>
  <main id="hotelList_main">
  <div class = left_map>
   <div class="overlay"></div>
   <button class="click_map"> 지도 보기 </button>
  </div>
  <session class="hotelList_center">
    <div class="container">
      <div class="accommodation">
        <img src="${ctx}/img/incheon/goldentulip_hotel/goldentulip_hotel.png">
        <div class="info">
          <div class="star">3성급</div>
          <h2>호텔 이름</h2>
          <div class="where"> 강남구 </div>
          <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
          <p class="h_price">185,000원</p>
          <div class="total_qty"> 남은 객실 2개</div>
        </div>
      </div>

      <div class="container">
        <div class="accommodation">
          <img src="${ctx }/img/incheon/harborpark_hotel/harborpark_hotel.png">
          <div class="info">
            <div class="star">3성급</div>
            <h2>호텔 이름</h2>
            <div class="where"> 강남구 </div>
            <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
            <p class="h_price">185,000원</p>
            <div class="total_qty"> 남은 객실 2개</div>
          </div>
        </div>

        <div class="container">
          <div class="accommodation">
            <img src="${ctx }/img/incheon/oakwood_hotel/oakwood_hotel.png">
            <div class="info">
              <div class="star">3성급</div>
              <h2>호텔 이름</h2>
              <div class="where"> 강남구 </div>
              <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
              <p class="h_price">185,000원</p>
              <div class="total_qty"> 남은 객실 2개</div>
            </div>
          </div>

          <div class="container">
            <div class="accommodation">
              <img src="${ctx }/img/incheon/paradise_hotel/delux_twin.png">
              <div class="info">
                <div class="star">3성급</div>
                <h2>호텔 이름</h2>
                <div class="where"> 강남구 </div>
                <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
                <p class="h_price">185,000원</p>
                <div class="total_qty"> 남은 객실 2개</div>
              </div>
            </div>

            <div class="container">
              <div class="accommodation">
                <img src="${ctx }/img/incheon/songdopark_hotel/songdo_hotel.png">
                <div class="info">
                  <div class="star">3성급</div>
                  <h2>호텔 이름</h2>
                  <div class="where"> 강남구 </div>
                  <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
                  <p class="h_price">185,000원</p>
                  <div class="total_qty"> 남은 객실 2개</div>
                </div>
              </div>

              <div class="container">
                <div class="accommodation">
                  <img src="${ctx }/img/gyeongju/commodore_hotel/commodore_hotel.png">
                  <div class="info">
                    <div class="star">3성급</div>
                    <h2>호텔 이름</h2>
                    <div class="where"> 강남구 </div>
                    <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
                    <p class="h_price">185,000원</p>
                    <div class="total_qty"> 남은 객실 2개</div>
                  </div>
                </div>

                <div class="container">
                  <div class="accommodation">
                    <img src="${ctx }/img/gyeongju/hilton_hotel/hilton_hotel.png">
                    <div class="info">
                      <div class="star">3성급</div>
                      <h2>호텔 이름</h2>
                      <div class="where"> 강남구 </div>
                      <div class="star_point"><span>★ 9.4</span> &nbsp; 525명이 평가함</div>
                      <p class="h_price">185,000원</p>
                      <div class="total_qty"> 남은 객실 2개</div>
                    </div>
                  </div>
        </session>
       </main>