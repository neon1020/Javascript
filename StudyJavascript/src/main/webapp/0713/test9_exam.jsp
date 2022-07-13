<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- test9.js 포함시키기 -->
<script type="text/javascript" src="test9.js"></script>
<script type="text/javascript">
	// 외부에서 문자열을 전달받아 출력하는 showMessage() 함수 정의
	function showMessage(data) {
		document.write(data + " : " + typeof (data) + "<br>")
	}

	// 호출 시 소괄호 부분에 전달인자(Argument) 명시
	showMessage("Hello, World!"); // string
	showMessage(500); // number
	showMessage(true); // boolean
	showMessage(); // defined
	
	document.write("<hr>");
	// ---------------------------------------------------------------------------------
	
	// 매개변수 data의 기본값을 "전달받은 데이터 없음"으로 설정
	function showMessage2(data = "전달받은 데이터 없음") {
		document.write(data + " : " + typeof (data) + "<br>")
	}
	
	showMessage2();
	showMessage2(20); // 전달인자 전달할 경우 기본값은 무시됨
	
	document.write("<hr>");
	// ---------------------------------------------------------------------------------
	
	// count 함수 정의 : 매개변수 num에 정수 1개 전달받아 1 ~ num 까지 1씩 증가하면서 출력
	function count (num) {
		for (var i = 1; i <= num; i++) {
			document.write(i + " ");
		}
	}
	
	count(5);
	
	document.write("<hr>");
	// ---------------------------------------------------------------------------------
	
	// sum 함수 정의 : 매개변수 num에 정수 1개 전달받아 1 ~ num 까지 합계 출력
	function sum (num) {
		var total = 0;
		for (var i = 1; i <= num ; i++){
			total += i;
		}
		document.write("1부터 " + num + "까지의 합 : " + total + "<br>")
	}
	
	sum(10);
	
	document.write("<hr>");
	// ---------------------------------------------------------------------------------
	
	// 매개변수가 2개 이상인 함수
	// showMessage3 : 이름(name)과 나이(age) 전달받아 출력
	// 자바스크립트에서는 변수 타입 상관 없이 매개변수 순서만 맞으면 됨!
	
	function showMessage3(name, age) {
		document.write("이름 : " + name + "<br>");
		document.write("나이 : " + age + "<br>");
	}
	
	showMessage3("홍길동", 30);
	showMessage3("이순신", 45);
	
	document.write("<hr>");
	// ---------------------------------------------------------------------------------
	
	// test9.js 파일의 login() 함수 호출하여 전달인자로 아이디, 패스워드 전달
	// login() 함수에서는 저장된 변수의 아이디, 패스워드와 비교 후
	// 로그인 성공! 또는 로그인 실패! 출력
	// 비교할 아이디(dbID) "admin", 패스워드(dbPasswd)는 "1234"로 가정
	
	login("id", "4321");
	login("admin", "4321");
	login("admin", "1234");
	
</script>
</head>
<body>

</body>
</html>