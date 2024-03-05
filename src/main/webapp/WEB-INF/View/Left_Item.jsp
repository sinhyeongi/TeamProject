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
		justify-content: space-between;
		align-items: center;
		padding : 0 24px;
		height: 100%;
		font-size: 16px;
		font-weight: 800;
		min-width: 100px;
}

table > tbody > tr:last-child {
	 border : none;
}
</style>
<table>
	<tr>
		<td>
			<a href="Reserve_Info.do" <c:if test="${page eq 'Member_Reserve_Info.jsp' }">style="color:#1273e4;"</c:if>>예약 내역</a>
			<svg data-v-4e1eb633 xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#C2C2C2" viewBox="0 0 20 20">
			<path fill="current" d="M7.016 14.594 12.02 10 7 5.392 8.402 4c2.816 2.545 4.485 4.076 5.007 4.594a1.978 1.978 0 0 1 0 2.812L8.422 16l-1.406-1.406Z"></path>
			</svg>
		</td>
	</tr>
	<tr>
		<td >
			<a href="Member_PointAndCoupon_Info.do" <c:if test="${page eq 'Member_PointAndCoupon_Info.jsp' }">style="color:#1273e4;"</c:if>>포인트 및 쿠폰</a>
			<svg data-v-4e1eb633 xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#C2C2C2" viewBox="0 0 20 20">
			<path fill="current" d="M7.016 14.594 12.02 10 7 5.392 8.402 4c2.816 2.545 4.485 4.076 5.007 4.594a1.978 1.978 0 0 1 0 2.812L8.422 16l-1.406-1.406Z"></path>
			</svg>
		</td>
	</tr>
	<tr>
		<td>
			<a href="Member_Info.do" <c:if test="${page eq 'Member_Info.jsp' }">style="color:#1273e4;"</c:if>>내 정보 관리</a>
			<svg data-v-4e1eb633 xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#C2C2C2" viewBox="0 0 20 20">
			<path fill="current" d="M7.016 14.594 12.02 10 7 5.392 8.402 4c2.816 2.545 4.485 4.076 5.007 4.594a1.978 1.978 0 0 1 0 2.812L8.422 16l-1.406-1.406Z"></path>
			</svg>
		</td>
	</tr>
</table>
