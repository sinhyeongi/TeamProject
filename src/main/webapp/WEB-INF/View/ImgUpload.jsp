<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
	<main id="ImgUpload_main">
	
    <c:forEach var="img" items="${list }" varStatus="s">
    	<c:if test="${s.first }">
    		<div id="img_secsion">
    	</c:if>
    	 <div><img src="${ctx }/img/${img.url}"><button value="${img.uploader },${img.no },${img.url}" class="ImgUploader_ImgDelete">삭제하기</button></div>
    	 <c:if test="${s.last }">
    		</div>
    	</c:if>
    </c:forEach>
    <form method="post" enctype="multipart/form-data">
    	<input type="file" name="file" id="file">
    </form>
</main>
