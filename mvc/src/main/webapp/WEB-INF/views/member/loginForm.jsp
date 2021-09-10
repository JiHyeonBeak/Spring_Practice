<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="result" value="${param.result }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<c:choose>
	<c:when test="${result == 'loginFaild' }">
		<script>
			window.onload = function () {
				alert('아이디나 비밀번호가 틀립니다. 다시 시도해주세요.');
			}
		</script>
	</c:when>
</c:choose>
</head>
<body>
	<form name="frmLogin" method="post" action="${contextPath }/member/login.do">
		<table border="1" width="80%" align="center">
			<tr align="center">
				<td>아이디</td>
				<td>비밀번호</td>
			</tr>
			<tr align="center">
				<td><input type="text" name="id" size="20" placeholder="아이디 입력"></td>
				<td><input type="password" name="pwd" size="20" placeholder="비밀번호 입력"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
				<input type="submit" value="로그인">
				<input type="reset" value="다시쓰기">
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>