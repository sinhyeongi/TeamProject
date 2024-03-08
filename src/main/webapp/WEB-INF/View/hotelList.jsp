<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<i id="allow" class="fa fa-arrow-left">&nbsp;&nbsp;&nbsp;뒤로가기</i>
<div class="back">
  <div><button value="" <c:if test="${category eq null }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">전체보기</button></div>
  <div><button value="50" <c:if test="${category eq '50' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">제주도</button></div>
  <div><button value="11" <c:if test="${category eq '11' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">서울</button></div>
  <div><button value="26" <c:if test="${category eq '26' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">부산</button></div>
  <div><button value="42.15" <c:if test="${category eq '42.15' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">강릉</button></div>
  <div><button value="28" <c:if test="${category eq '28' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">인천</button></div>
  <div><button value="47.13" <c:if test="${category eq '47.13' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">경주</button></div>
  <div><button value="26.35" <c:if test="${category eq '26.35' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">해운대</button></div>
  <div><button value="41.52" <c:if test="${category eq '41.52' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">가평</button></div>
  <div><button value="46.13" <c:if test="${category eq '46.13' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">여수</button></div>
  <div><button value="42.21" <c:if test="${category eq '42.21' }"> style="background-color:blue; color:white;"</c:if>
      class="list_category_btn">속초</button></div>
</div>
<main id="hotelList_main">
  <div class=left_map>
    <div class="overlay"></div>
    <button class="click_map"> 지도 보기 </button>
  </div>

  <session class="hotelList_center">

    <c:forEach var="hotel" items="${list }">

      <div class="container">
        <input type="hidden" name="hotel_no" value="${hotel.no }">
        <div class="accommodation">
          <c:forEach var="url" items="${hotel.url }">
            <div><img src="${ctx }/img/${url}"></div>
          </c:forEach>
          <c:if test="${hotel.url eq null or hotel.url.size() eq 0 }">
            <div><img src="http:///via.placeholder.com/300x300"></div>
          </c:if>
          <div class="info">
            <div class="star">${hotel.star }성급</div>
            <h2>${hotel.name }</h2>
            <div class="where"> ${hotel.address } </div>
            <div class="star_point"><span>★ ${hotel.star_point }</span> &nbsp; ${hotel.reviewCount }명이 평가함</div>
            <p class="h_price">${hotel.price }원</p>
          </div>

        </div>
      </div>

    </c:forEach>
  </session>
</main>
<script>
	let htList = JSON.parse('${htList}');
</script>