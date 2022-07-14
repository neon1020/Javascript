<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	location 객체
	- 페이지 이동 관련 정보를 관리하는 객체(= 페이지 이동 관련 작업 담당)
	- window 객체의 하위 객체이므로 window.location 형식으로 접근하지만
	  보통 window 객체명은 생략하고 location.xxx 형식으로 사용
	- 페이지 처리 관련 속성(변수) 및 함수가 제공됨
	  => location 객체의 href 변수(속성)가 URL 정보 관리하는 대표적인 변수
	*/
	function func1() {
		// URL 정보 확인을 위해 location 객체의 href 속성값 확인
		alert(location.href);
		// => http://localhost:8080/StudyJavascript/0714/test14.jsp
	}

	function func2() {
		// URL 정보 변경을 위해 location 객체의 href 속성값 변경
		// => 변경된 주소로 새로운 요청이 발생 = 새로운 주소로 이동
// 		location.href = "test13.jsp"; // test13.jsp 페이지로 이동
		location.href = "http://www.naver.com"; // 네이버 홈페이지로 이동
	}

	function func3() {
		// URL 정보 새로고침을 위해 location 객체의 reload() 함수 호출
		// => 주소표시줄의 URL 에 해당하는 페이지를 다시 로딩 = 페이지 새로고침(F5 키)과 동일
		location.reload();
		// => 확인을 위해서는 새로고침 전에 텍스트 상자 등에 데이터를 입력한 후 새로고침 수행
	}
</script>
</head>
<body>
	<h1>test14.jsp - location 객체</h1>
	<input type="button" value="URL 정보 출력" onclick="func1()">
	<input type="button" value="URL 정보 변경" onclick="func2()">
	<input type="button" value="URL 새로고침" onclick="func3()"><br>
	<input type="text">
	<hr>
	<input type="button" value="즉시구매" onclick="func4('order')">
	<input type="button" value="장바구니" onclick="func4('cart')">
</body>
</html>
