<!-- member-header 긁 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath }"/> <!--경로저장 -->

<!-- 본문내용 -->
<div style="text-align:center">
	<a href="${path }/member/list">회원관리</a> <!-- = member폴더에 list 작업 -->
</div>
<hr> <!-- 수평선 -->