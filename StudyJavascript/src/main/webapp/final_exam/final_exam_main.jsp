<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var isDuplicate = true; // 아이디 중복 여부 저장할 전역변수 선언 (true : 중복 false : 중복아님)
	var isSamePassword = false; // 패스워드 일치 여부 저장할 변수 (true : 일치, false : 불일치)
	var isValidPassword = false; // 패스워드 유효성(8~16자) 검사 결과 저장할 변수 (true : 유효 false : 불효)
	
	function idCheck(id){ // O
		var spanResult = document.getElementById("checkIdResult"); // id를 우선으로 찾음!
		if (id.length >= 4 && id.length <= 8) {
			window.open("check_id.jsp","check","width=300, height=300");
			spanResult.innerHTML = "중복 확인 완료!";
			// 중복확인완료 표시 위해 변수 false로 변경 (= 중복이 아니다!)
			isDuplicate = false;
		}
		else {
			alert("4 ~ 8 글자만 사용가능합니다.");
			document.fr.ID.focus(); // 포커스 주기
			isDuplicate = true; // true = 중복!
		}
	} 
	
	function keyCheck(pass) { // O
		var spanResult = document.getElementById("checkPasswdResult");
		reCheck(document.fr.passwdCheck.value);
	
		if (pass.length >= 8 && pass.length <= 16) {
			spanResult.innerHTML = "사용 가능한 패스워드";
			spanResult.style.color = "blue";
			isValidPassword = true;
		} else {
			spanResult.innerHTML = "사용 불가능한 패스워드";
			spanResult.style.color = "red";
			isValidPassword = false;
		}
	}

	
	function reCheck(passwd2) { // O
		var spanResult = document.getElementById("checkPasswd2Result");
		if (passwd2 == document.fr.passwd.value) {
			spanResult.innerHTML = "비밀번호 일치";
			spanResult.style.color = "blue";
			isSamePassword = true; // 일치할 때 true
		} else {
			spanResult.innerHTML = "비밀번호 불일치";
			spanResult.style.color = "red";
			isSamePassword = false; // 불일치할 때 false
		}
	}
	
	function ssnCheck(value) { // O
		if (value.length == 6) {
			document.fr.ssn2.focus(); // 커서 요청 (포커스 요청)
			return true;
		}
	}
	
	function ssnCheck2(value) { // O
		if (value.length == 7) {
			document.fr.ssn2.blur(); // 커서 제거 (포커스 해제)
			return true;
		}
	}
	
	function emCheck(select) {
		document.fr.email2.value = select;
		if(select == "") {
			document.fr.email2.focus(); // 직접입력 시 포커스 요청
		}
		return true;
	}
	
	function checkAll(isChecked) { // O
		var h = document.fr.hobby;
		if(isChecked) {
			h[0].checked = true;
			h[1].checked = true;
			h[2].checked = true;
		} else {
			h[0].checked = false;
			h[1].checked = false;
			h[2].checked = false;
		}
	}
	
	function checkForm(fr) { // fr = this = document.fr
		if(!isSamePassword) { // isSamePassword == false
			alert("패스워드가 일치하지 않습니다!")
			fr.passwd.select(); // 포커스(영역 선택) 주기
			return false;
		} else if(fr.ssn.value.length != 6) {
			alert("주민번호 앞자리 6자리 필수!")
			fr.ssn.select(); // 포커스(영역 선택) 주기
			return false;
		} else if(fr.ssn2.value.length != 7) {
			alert("주민번호 뒷자리 7자리 필수!")
			fr.ssn2.select(); // 포커스(영역 선택) 주기
			return false;
		} else if(isDuplicate) { // 아이디가 중복일 경우 (isDuplicate == true)
			alert("아이디 확인 필수!")
			fr.ID.select(); // 포커스(영역 선택) 주기
			return false;
		} else if(!isValidPassword){ // 비밀번호가 유효하지 않을 경우 (isValidPassword == false)
			alert("유효한 비밀번호를 입력해주세요!")
			fr.passwd.select(); // 포커스(영역 선택) 주기
			return false;
		}	
		// 위 모든 조건 만족하지 않을 때(=입력이 모두 정상) submit 동작 수행
		return true;
		
	}
	
	
</script>
</head>
<body>
	<h1>회원가입</h1>
	<!-- 페이지 이동 (하이퍼링크 or 버튼 누르기) -->
	<!-- 	<a href="final_exam.jsp">회원가입</a> -->
	<!-- 	<input type="button" value="회원가입" onclick="location.href='final_exam.jsp'"> -->
	
	<form action="a.jsp" method="get" name="fr" onsubmit="return checkForm(this)"> <!-- this = document.fr -->
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>ID</td>
				<td><input type="text" name="ID" placeholder="4 ~ 8글자 사이 입력">
					<input type="button" value="ID중복확인" onclick="idCheck(document.fr.ID.value)">
					<span id="checkIdResult"></span>
				</td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td>
					<!-- onkeyup = 누를 때 마다!! -->
					<!-- 패스워드 입력 시마다 keyCheck()함수 호출됨 -->
					<input type="password" name="passwd" placeholder="8 ~ 16글자 사이 입력" onkeyup="keyCheck(this.value)">
					<span id="checkPasswdResult"></span>
				</td>
			</tr>

			<tr>
				<td>비밀번호확인</td>
				<!-- onchange로 걸면 텍스트박스 빠져나갔을 때(포커스 해제시) 체크해줌 : 완료 시점의 확정된 값을 비교(입력하는 동안에는 비교x) -->
				<!-- 원래 텍스트와 동일한 텍스트가 최종 상태일 경우(중간에 변동이 있었어도) onchange는 동작하지 않는다 -->
				<td><input type="password" name="passwdCheck" onkeyup="reCheck(this.value)">
					<span id="checkPasswd2Result"></span>
				</td>
			</tr>

			<tr>
				<td>주민번호</td>
				<td>
					<input type="text" name="ssn" onkeyup="ssnCheck(this.value)"> - 
					<input type="password" name="ssn2" onkeyup="ssnCheck2(this.value)">
				</td>
			</tr>

			<tr>
				<td>E-Mail</td>
				<td><input type="text" name="email"> @ <input type="text" name="email2">
					<select name="emailOption" onchange="emCheck(this.value)">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
					</select></td>
			</tr>

			<tr>
				<td>직업</td>
				<td><select name="job">
						<option value="">항목을 선택하세요</option>
						<option value="개발자">개발자</option>
						<option value="엔지니어">DB엔지니어</option>
						<option value="관리자">관리자</option>
						<option value="기타">기타</option>
				</select></td>
			</tr>
			
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여">여
				</td>
			</tr>
			
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" name="hobby" value="여행">여행
					<input type="checkbox" name="hobby" value="독서">독서
					<input type="checkbox" name="hobby" value="게임">게임
					<input type="checkbox" name="all" value="전체선택" onclick="checkAll(this.checked)">전체선택
				</td>
			</tr>
			
			<tr>
				<td>가입동기</td>
				<td><textarea rows="10" cols="20" name="ta"></textarea></td>
			</tr>
			
			<tr>
				<th colspan="2">
					<input type="submit" value="가입">
					<input type="reset" value="초기화">
					<input type="button" value="돌아가기" onclick="history.back()">
				</th>
			</tr>

		</table>
	</form>
</body>
</html>