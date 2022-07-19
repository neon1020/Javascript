<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="test10.js"></script>
<script type="text/javascript">
	// sum() 함수 : 정수 1개(num) 입력받아 1 ~ num 까지 합 계산하여 리턴하기
	function sum(num) {
		var total = 0;
		for (var i = 1; i <= num; i++) {
			total += i;
		}
		return total;
	}

	// sum() 함수 호출하여 정수 1개 전달하고, 리턴값 받아 출력하기
	var a = 10;
	document.write("1부터 " + a + "까지의 합 : " + sum(a) + "<br>");
	
	document.write("<hr>")
	
	
	// test10.js 파일의 login() 함수 호출하여 전달인자로 아이디, 패스워드 전달
	// login() 함수에서는 저장된 변수의 아이디, 패스워드와 비교 후
	// 둘 다 일치할 경우 true, 아니면 false 리턴
	// 비교할 아이디(id) "admin", 패스워드(passwd)는 "1234"로 가정
	// 호출하는 곳에서 리턴되는 값 전달받아 변수(isSuccess)에 저장 후
	// isSuccess = true : "로그인 성공!" / false : "로그인 실패!"
	
	var isSuccess = login("admin", "1234");
	if (isSuccess == true) {
		document.write("로그인 성공! <br>");
	} else {
		document.write("로그인 실패! <br>");
	}
	
	
</script>
</head>
<body>

</body>
</html>
