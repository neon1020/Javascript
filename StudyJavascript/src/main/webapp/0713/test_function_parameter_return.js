

// test10.js 파일의 login() 함수 호출하여 전달인자로 아이디, 패스워드 전달
 // login() 함수에서는 저장된 변수의 아이디, 패스워드와 비교 후
 // 둘 다 일치할 경우 true, 아니면 false 리턴
	// 비교할 아이디(id) "admin", 패스워드(passwd)는 "1234"로 가정
	// 호출하는 곳에서 리턴되는 값 전달받아 변수(isSuccess)에 저장 후
	// isSuccess = true : "로그인 성공!" / false : "로그인 실패!"
	
	function login(id, passwd) {
		if (id == "admin" && passwd == "1234") {
			return true;
		} else {
			return false;
		}
	}
