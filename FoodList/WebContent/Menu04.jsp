<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/home.css" type="text/css">

<title>Insert title here</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	* {
			font-family: 'Poor Story', cursive;
			text-align: center;
		}
</style>
<%
	if(session.getAttribute("cUser") == null)
	{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('로그인이 필요합니디.');");
		out.println("location='login.jsp';");
		out.println("</script>");
	}
%>
<body>
<div id="container">
        <header>
            <%@ include file = "header.jsp"%>
        </header>
        
        
        
        
        
        
        
        
        
        
        
        
        <footer>
            <%@ include file="footer.jsp" %>
        </footer>
</body>
</html>