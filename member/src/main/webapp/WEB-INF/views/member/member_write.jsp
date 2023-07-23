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

<!-- 각 페이지별로 변경되는 부분 -->
<!-- 입력과 수정폼은 반드시 form -->
<!-- name은 부트스트랩, 자바스크립, JQuery 사용시 -->
<form name="form1" method="post" action="${path }/member/insert">
<!-- ㄴ member/insert는 값으로, post방식으로 Controller에 전달(member_list의 button부분) -->
<!-- list에 등록버튼 -> Controller -> member_write.jsp페이지 이동 -> submit버튼을 클릭 -> Controller -> DB저장(service) -> 목록페이지 이동(redirect) -->
	<table border="1" width="400px">
	<!-- ㄴ 만약 부트스트랩 사용 시 div, card방식 사용 -->
	<tr> <!-- 1행이 완성되면 복사 후 수정, name은 DTO에 있는 필드명과 동일하게 -->
		<td>아이디</td>
		<td><input type="text" name="userId"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="userName"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="userPw"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="email" name="userEmail"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="등록">
			<input type="reset" value="새로작성">
		</td>
	</tr>
	</table>
</form>

</body>
</html>