<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>회원 목록</title>
<%@ include file="../include/member_header.jsp" %>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
	<!-- 목록작성 -->
	<h2>회원 목록</h2>
	
	<!-- <button></button> <a href="#"></a>-->
	<!-- 회원등록 버튼을 클릭했을 때 이동, member/write가 Controller에 전달 -->	
	<input type="button" value="회원등록" onclick="location.href='${path }/member/write'"/>
	
	<table border="1" width="700px">
		<tr><!-- 1행 제목 -->
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>회원가입일자</th>
		</tr>
	<c:forEach var="row" items="${list }">
	<!-- ㄴ Controller에서 list로 받아온 레코드의 개수만큼 반복 -->
		<tr> <!-- 회원정보가 반복적으로 출력되는 부분 -->
			<td>${row.userId}</td>
			<td><a href="${path}/member/view?userId=${row.userId}">${row.userName}</a></td>
			<!--ㄴ<a href> 목록에서 이름을 클릭했을 때 수정, /member/view?userId=홍길동 -->
			<td>${row.userEmail}</td>
			<td>${row.userRegdate}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>