<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*
	4. 매개변수도 있고, 리턴값도 있는 함수
	
	< 기본 문법 >
	function 함수명(매개변수...) {
		// 함수 호출 시 실행할 코드들...
		return 리턴값;
	}
	*/
	
	function sister4(money) {
		document.write("동생 : 언니가 과자 사오라고 " + money + "원을 줬다!<br>");
		money -= 200;
		document.write("동생 : 과자 사고 " + money + "원 남았다!<br>");
		return "과자"; // return 값은 하나만 지정 가능!!
	}
	
	document.write("동생아! 500원 줄테니 과자 좀 사다줄래?<br>");
	var myMoney = 500;
	
	// sister4() 함수를 호출하여 myMoney 변수값을 전달하고 리턴되는 데이터를 snack 변수에 저장
	var snack = sister4(myMoney); // 함수 내의 출력문들 출력됨
	document.write("동생이 사다준 것 : " + snack + "<br>");
	
</script>
</head>
<body>

</body>
</html>
