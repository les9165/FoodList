<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원가입 </title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	* {
			font-family: 'Poor Story', cursive;
			text-align: center;
		}
.join{
 	width: 300px;
    height: 450px;
    margin: 30px;
    top:10px;
    text-align: center;
    font-weight: bold;
    border:1px black;
    background-color: #B2EBF4;
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
        <div class ="join">
			<form action="join.do" method="post">
				Name:<input type="text" name="name" /><br>
				ID:<input type="text" name="id" /><br>
				PW:<input type="password" name="pwd" /><br>
				E-mail:<input type="text" name="email" /><br>
				<input type="submit" value="join" />
			</form>
	</div>
	
	<footer>
            <%@ include file="footer.jsp" %>
     </footer>
	
</body>
</html>