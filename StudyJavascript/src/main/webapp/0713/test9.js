/**
 * 
 */
// login() 함수에서는 저장된 변수의 아이디, 패스워드와 비교 후
// 로그인 성공! 또는 로그인 실패! 출력
// 비교할 아이디 "admin", 패스워드 "1234"로 가정


function login (id, passwd) {
	if ((id == "admin") && (passwd == "1234")) {
		document.write("로그인 성공! <br>")
	} else {
		document.write("로그인 실패! <br>")
	}
}
