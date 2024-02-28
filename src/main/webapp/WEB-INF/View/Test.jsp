<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
   <main>
   <h2>Test!</h2>
   <c:forEach var="vo" items="${list }">
   		<div>
   		no = <span class="no">${vo.no }</span><br/>
   		address = <span class="address">${vo.address }</span><br/>
   		name =<span>${vo.name }</span><br/>
   		x = <span class="x">${vo.x }</span><br/>
   		y = <span class="y">${vo.y }</span><br/>
   		area = <span class="area">${vo.area }</span><br/>
   		<button class="test_btn">버튼</button>
   		<br/>
   		<hr/>
   		</div>
   </c:forEach>
	   
   </main>
