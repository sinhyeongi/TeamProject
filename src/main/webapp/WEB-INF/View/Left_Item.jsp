<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
a{
color : black;
}
table{
	flex:1;
	border : 1px solid #e7e7e7;
	width: 100%;
	height: 100%;
	border-radius: 12px;
}
table > tbody {
	width : 100%;
	height: 100%;
	display: flex;
	flex-direction: column; 
}
table > tbody > tr{
	flex:1;
	width:100%;
	height:100%;
	border-bottom: 1px solid #e7e7e7;
}
table > tbody > tr > td{
		display: flex;
		justify-content: center;
		align-items: center;
		width: 100%;
		height: 100%;
}

table > tbody > tr:last-child {
	 border : none;
}
</style>
<table>
	<tr>
		<td><a href="Reserve_Info.do" <c:if test="${page eq 'Member_Reserve_Info.jsp' }">style="color:blue;"</c:if>>예약 내역</a></td>
	</tr>
	<tr>
		<td>포인트</td>
	</tr>
	<tr>
		<td >쿠폰</td>
	</tr>
	<tr>
		<td><a href="Member_Info.do" <c:if test="${page eq 'Member_Info.jsp' }">style="color:blue;"</c:if>>내 정보 관리</a></td>
	</tr>
</table>
