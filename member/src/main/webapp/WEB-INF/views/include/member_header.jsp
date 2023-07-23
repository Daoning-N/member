<!-- 필요한 영역만 있으면 되기 때문에 불필요한 부분 삭제 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- ㄴ 페이지 정보 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- ㄴ JSTL 명령을 사용 -->

<c:set var="path" value="${pageContext.request.contextPath }"/> <!--경로저장 -->
<!-- c:set=저장, var=변수명, value=값 ==> path='값' -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- ㄴ 자바스크립트/JQuery -> 유효성 검사, 결과처리 -->
</head>
