<!-- write 복붙 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>회원 상세</title>
<%@ include file="../include/member_header.jsp" %>
<script><!-- 자바스크립트 -->
	<!--JQuery-->
	<!--문자에 스크립트를 준비-->
	$(document).ready(function(){
		$("#btn_Update").click(function(){//아이디명이 btn_Update에서 클릭이 발생하면
			if(confirm("수정하시겠습니까?")){//수정하시겠습니까 메시지에서 예를 누르면
				document.form1.action="${path}/member/update";
				document.form1.submit();
			}
		})
	});

</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>

<!-- <form name="form1" method="post"> member/view 연결 get,post 나눠서 처리 -->
<form name="form1" method="post" action="${path }/member/update">
	<table border="1" width="400px">
	<tr>
		<td>아이디</td><!-- 아이디는 읽기용, 달러{}=>컨트롤러에서 지정한 이름 -->
		<td><input type="text" name="userId" value="${dto.userId }" readonly></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="userName" value="${dto.userName }"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="userPw" value="${dto.userPw }"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="email" name="userEmail" value="${dto.userEmail }"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="수정">
			<input type="button" value="삭제" onclick="location.href='${path}/member/delete?userId=${dto.userId }'"/>
		</td>
	</tr>
	</table>
</form>

</body>
</html>