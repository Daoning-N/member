<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>회원관리</title>
<%@ include file="./include/member_header.jsp" %><!-- 설정값 -->
<!-- ㄴ 경로지정 중요! './'루트에서 시작, '../' 해달폴더를 벗어난 후 -->
</head>
<body>

<%@ include file="./include/member_menu.jsp" %>


<h2>${msg }</h2> <!-- controller에서 전송된 msg변수의 값을 출력 -->
</body>
</html>