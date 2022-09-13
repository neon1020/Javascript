<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function load() {
		alert("load 이벤트");
	}
</script>
</head>
<!-- body 영역 로딩 완료 시 onload 이벤트 동작하여 load() 함수 호출됨 -->
<body onload="load()">
	<script type="text/javascript">
		alert("1");
	</script>
	
	<h1>test1.jsp</h1>
	
	<script type="text/javascript">
		alert("2");
	</script>
</body>
</html>