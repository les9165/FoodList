<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${check }로 먹을 식단을 골라주세요
	<form action="check.do" method="post">
		<input type="radio" name="menu">다이어트식
		<input type="radio" name="menu">해장식
		<input type="radio" name="menu">영양식
		<input type="radio" name="menu">일반식
		<input type="radio" name="menu">간편식
		<input type="submit" value="찾기">
	</form>
</body>
</html>