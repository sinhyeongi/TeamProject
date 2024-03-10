<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<style>
a{
color : black;
}
.notice_nav {
	border-bottom: 1px solid #e7e7e7;
	width: 100%;
	margin-top: 30px;
}
.items{
	display: flex;
	max-width: 1200px;
	margin: auto;
}
.item{
	margin: 10px;
	font-size : 15px;
	font-weight: 700;
}
.item.current{
	border-bottom: 1px solid #1273e4;
}
.main{
	    padding : 0 30px;
}
@media (max-width: 768px){
	.container{
		width:100%;
	}
	.main{
	margin:0;
	padding:0;
	}
}
</style>
<div class="notice_nav">
	<div class=items>
		<div class="item">
			<a href="Boarder_Notice.do" <c:if test="${page eq 'notice.jsp'}">style="color:#1273e4;"</c:if>>공지사항</a>
		</div>
		<div class="item">
			<a href="Customer_Service_Center.do" <c:if test="${page eq 'Customer_Service_Center.jsp'}">style="color:#1273e4;"</c:if>>고객센터</a>
		</div>
		<div class="item">
			<a href="Event.do" <c:if test="${page eq 'eventPage.jsp' }">style="color:#1273e4;"</c:if>>이벤트</a>
		</div>
	</div>
</div>


