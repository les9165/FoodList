<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/Menu01.css" type="text/css">
<title>Insert title here</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	* {
			font-family: 'Poor Story', cursive;
			text-align: center;
		}
</style>
<body>
<div id="container">
        <header>
            <%@ include file = "header.jsp"%>
        </header>
	<h3>재료를 선택하세요</h3>
	
	
	<div id="category" style class="m_category" >
	<form action="search.do" method="post">
		<table width="98%">
		<tbody>
			<tr>
				<td class="side" width="100px">
					과일
				</td>
		<td colspan="2">
			<input type="checkbox" name="food[]" value="1">사과
			<input type="checkbox" name="food[]" value="2">배
			<input type="checkbox" name="food[]" value="3">수박
			<input type="checkbox" name="food[]" value="4">딸기
			<input type="checkbox" name="food[]" value="5">포도
			<input type="checkbox" name="food[]" value="6">블루베리
			<input type="checkbox" name="food[]" value="7">파인애플
		    <input type="checkbox" name="food[]" value="8">오렌지
			<input type="checkbox" name="food[]" value="9">레몬
			<input type="checkbox" name="food[]" value="10">키위
			<input type="checkbox" name="food[]" value="11">아보카도
			<input type="checkbox" name="food[]" value="12">대추
			<input type="checkbox" name="food[]" value="13">망고
			<input type="checkbox" name="food[]" value="바나나">바나나
		</td>
			
		<tr>	
			<td valign="middle" class="side" >
				정육/계란
			</td>
		<td colspan="3">
			<input type="checkbox" name="food[]" value="소고기">소고기
			<input type="checkbox" name="food[]" value="닭고기">닭고기
			<input type="checkbox" name="food[]" value="오리고기">오리고기
			<input type="checkbox" name="food[]" value="돼지고기">돼지고기
			<input type="checkbox" name="food[]" value="계란">계란 
			<input type="checkbox" name="food[]" value="메추리알">메추리알
		</td>
		</tr>
		
		<tr>
			<td valign="middle" class="side">
				채소
			</td>
		<td colspan="4">
			<input type="checkbox" name="food[]" value="토마토">토마토
			<input type="checkbox" name="food[]" value="고구마">고구마
			<input type="checkbox" name="food[]" value="감자">감자
			<input type="checkbox" name="food[]" value="양파">양파
			<input type="checkbox" name="food[]" value="마늘">마늘 
			<input type="checkbox" name="food[]" value="파">파
			<input type="checkbox" name="food[]" value="당근">당근
			<input type="checkbox" name="food[]" value="오이">오이
			<input type="checkbox" name="food[]" value="애호박">애호박
			<input type="checkbox" name="food[]" value="단호박">단호박
			<input type="checkbox" name="food[]" value="우엉">우엉
			<input type="checkbox" name="food[]" value="옥수수">옥수수
			<input type="checkbox" name="food[]" value="파프리카">파프리카
			<input type="checkbox" name="food[]" value="가지">가지
			<input type="checkbox" name="food[]" value="브로콜리">브로콜리
			<input type="checkbox" name="food[]" value="양배추">양배추
			<input type="checkbox" name="food[]" value="상추">상추
			<input type="checkbox" name="food[]" value="깻잎">깻잎
			<input type="checkbox" name="food[]" value="고추">고추
			<input type="checkbox" name="food[]" value="배추">배추
			<input type="checkbox" name="food[]" value="무">무
			<input type="checkbox" name="food[]" value="버섯">버섯
			<input type="checkbox" name="food[]" value="시금치">시금치 
			<input type="checkbox" name="food[]" value="부추">부추 
		</td>	
		</tr>
		
		<tr>
			<td valign="middle" class="side">
				우유/유제품
			</td>
		<td colspan="5">
			<input type="checkbox" name="food[]" value="우유">우유
			<input type="checkbox" name="food[]" value="치즈">치즈 
			<input type="checkbox" name="food[]" value="버터">버터
			<input type="checkbox" name="food[]" value="요거트">요거트
		</td>	
		</tr>
		
		<tr>
			<td valign="middle" class="side">
				수산물
			</td>
		<td colspan="6">
			<input type="checkbox" name="food[]" value="고등어">고등어
			<input type="checkbox" name="food[]" value="연어">연어
			<input type="checkbox" name="food[]" value="굴비">굴비
			<input type="checkbox" name="food[]" value="갈치">갈치
			<input type="checkbox" name="food[]" value="장어">장어 
			<input type="checkbox" name="food[]" value="꽁치">꽁치
			<input type="checkbox" name="food[]" value="참치">참치
			<input type="checkbox" name="food[]" value="새우">새우
			<input type="checkbox" name="food[]" value="게">게 
			<input type="checkbox" name="food[]" value="오징어">오징어
			<input type="checkbox" name="food[]" value="낙지">낙지
			<input type="checkbox" name="food[]" value="쭈꾸미">쭈꾸미
			<input type="checkbox" name="food[]" value="문어">문어
			<input type="checkbox" name="food[]" value="골뱅이">골뱅이
			<input type="checkbox" name="food[]" value="굴">굴
			<input type="checkbox" name="food[]" value="바지락">바지락
			<input type="checkbox" name="food[]" value="멍게">멍게
			<input type="checkbox" name="food[]" value="해삼">해삼
			<input type="checkbox" name="food[]" value="전복">전복
			<input type="checkbox" name="food[]" value="멸치">멸치
			<input type="checkbox" name="food[]" value="미역">미역
			<input type="checkbox" name="food[]" value="다시마">다시마      
		</td>	
		</tr>
		
		<tr>
			<td valign="middle" class="side">
				양념
			</td>
		<td colspan="7">
			<input type="checkbox" name="food[]" value="고추장">고추장
			<input type="checkbox" name="food[]" value="된장">된장
			<input type="checkbox" name="food[]" value="간장">간장
			<input type="checkbox" name="food[]" value="식초">식초
			<input type="checkbox" name="food[]" value="꿀">꿀 
			<input type="checkbox" name="food[]" value="올리고딩">올리고당
			<input type="checkbox" name="food[]" value="마요네즈">마요네즈 
		</td>	
		</tr>
		
		<tr>
			<td valign="middle" class="side">
				기타
			</td>
		<td colspan="8">
			<input type="checkbox" name="food[]" value="김">김
			<input type="checkbox" name="food[]" value="아몬드">아몬드 
			<input type="checkbox" name="food[]" value="땅콩">땅콩
			<input type="checkbox" name="food[]" value="호두">호두
			<input type="checkbox" name="food[]" value="라면">라면 
			<input type="checkbox" name="food[]" value="어묵">어묵
			<input type="checkbox" name="food[]" value="햄">햄
			<input type="checkbox" name="food[]" value="떡">떡
			<input type="checkbox" name="food[]" value="파스타면">파스타면
			<input type="checkbox" name="food[]" value="소면">소면
			<input type="checkbox" name="food[]" value="85">두부
			<input type="checkbox" name="food[]" value="김치">김치
			<input type="checkbox" name="food[]" value="쌀">쌀
			<input type="checkbox" name="food[]" value="콩">콩
			<input type="checkbox" name="food[]" value="팥">팥 
			<input type="checkbox" name="food[]" value="씨리얼">씨리얼
			<input type="checkbox" name="food[]" value="진미채">진미채
			<input type="checkbox" name="food[]" value="카레">카레  
			<input type="checkbox" name="food[]" value="라이스페이퍼">라이스페이퍼
			<input type="checkbox" name="food[]" value="유부초밥">유부초밥
			<input type="checkbox" name="food[]" value="콩나물">콩나물  
			<input type="checkbox" name="food[]" value="동태">동태
			<input type="checkbox" name="food[]" value="황태채">황태채  
			<input type="checkbox" name="food[]" value="인삼">인삼
			<input type="checkbox" name="food[]" value="99">부침가루
			<input type="checkbox" name="food[]" value="식빵">식빵   
		</td>	
		</tr>
		
		

	</tbody>
	</table>
	<div class="radio_btn">
		<input type="radio" name="menu" value="디이어트식">다이어트식
		<input type="radio" name="menu" value="해장식">해장식
		<input type="radio" name="menu" value="영양식">영양식
		<input type="radio" name="menu" value="일반식">일반식
		<input type="radio" name="menu" value="간편식">간편식
		<input id="search" type="submit" value="선택재료 찾기">
	</div>
	</form>
	<form action="Menu01.jsp" method="post"><input id="clear" type="submit" value="전체 지우기"></form>
	</div>
	
	
	
	

	</div>
	
	
	<footer>
            <%@ include file="footer.jsp" %>
        </footer>
</body>
</html>