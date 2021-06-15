<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 </title>
<link rel="stylesheet" href="css/home.css" type="text/css">
<style>
.login{
    width: 300px;
    height: 450px;
    margin: 30px;
    top:10px;
    text-align: center;
    font-weight: bold;
    border:1px black;
    background-color: #B2EBF4;
}

@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	* {
			font-family: 'Poor Story', cursive;
			text-align: center;
		}

</style>
</head>
<body>
<%
	String where = request.getParameter("where");
%>
<div id="container">
        <header>
            <%@ include file="header.jsp" %>
        </header>
        
	
	<div class="login">
	<form action="login.do" method="post">
		<input type = "hidden" type ="text" name = "where" value =<%=where%>>
		ID:<input type="text" name="id" placeholder="아이디"><br>
		PW:<input type="password" name="pwd" placeholder="비밀번호"><br>
		<input type="submit" value="login">
	</form>
	<form action="join.do" method="post">
		<input type="submit" value="join">
	</form>
</body>
</html>