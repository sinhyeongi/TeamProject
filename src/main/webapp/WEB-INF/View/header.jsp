<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ttt</title>
  <!-- jquert  -->
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <!-- flatpickr js import	 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
  <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
  <script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
  <script defer src="script/header.js"></script>
  <link rel="stylesheet" href="${ctx }/css/header.css">
</head>
<body>
  <header>
    <nav>
      <div class="header_logo">
        <a href="#"><img src="${ctx }/img/logo.png" alt="header_logo"></a>
      </div>
      <ul class="gnb">
        <li><a href="#">이벤트</a></li>
        <li><a href="#about">고객센터</a></li>
        <li id="member_menu" onclick="showPopup(event)">
          <div>
            <span><i class="fa fa-bars"></i></span>&nbsp;
            <span><i id="userImg" class="fa fa-user"></i></span>
          </div>
        </li>
      </ul>
    </nav>
    <div class="header_popup">
      <!-- 클릭시 로그인/ 회원가입 페이지로 이동 추가해야함 -->
      <div><a>로그인 / 회원가입 </a> </div>
      <!-- 클릭시 비회원 예약조회 페이지로 이동 추가해야함 -->
      <div><a>비회원 예약조회</a></div>
    </div>
  </header>
  <main>
    <li>시작</li>
    <li>3</li>
    <li>4</li>
    <li>5</li>
    <li>6</li>
    <li>7</li>
    <li>8</li>
    <li>9</li>
    <li>10</li>
    <li>11</li>
    <li>12</li>
    <li>13</li>
    <li>14</li>
    <li>15</li>
    <li>16</li>
    <li>17</li>
    <li>18</li>
    <li>19</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
    <li>20</li>
  </main>


