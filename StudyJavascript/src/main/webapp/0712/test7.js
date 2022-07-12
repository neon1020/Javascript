/**
 * 외부자바스크립트 파일 내에 사용자 정의 함수 정의하고 호출하기
 */
function checkNumGame() {
	/*
	정수 1개를 입력받아 기존에 저장된 정수와 비교하여 일치 여부 확인한 후
	1) 기존에 저장된 숫자가 입력받은 숫자보다 클 경우 : "입력받은 숫자보다 큽니다!" 출력
	2) 기존에 저장된 숫자가 입력받은 숫자보다 작을 경우 : "입력받은 숫자보다 작습니다!" 출력
	3) 기존에 저장된 숫자가 입력받은 숫자와 같을 경우 : "정답입니다!" 출력
	----------------------------------------------------------------------------------------
	=> 단, 입력받은 숫자보다 작거나 클 경우(정답이 아닐 경우) 다시 숫자 입력받기 => 무한루프 활용
	=> 이 때, 정답일 경우 반복문 종료 후 숫자를 입력한 횟수를 계산하여 "x번만에 정답!" 출력
	   (반복문 내에서 숫자 입력 후 입력받은 횟수를 카운팅 필요)
	*/

	var correctNum = 10; // 정답
	var count = 0; // 숫자 입력받은 횟수 카운팅 할 변수
	var inputData = prompt("숫자를 입력해주세요.");

	count++;
	if (Number(inputData) == correctNum) {
		document.write("정답입니다! <br>");
	} else {
		while (Number(inputData) != correctNum) {
			inputData = prompt("숫자를 입력해주세요.");
			if (Number(inputData) > correctNum) {
				document.write("입력받은 숫자보다 큽니다! <br>");
			} else {
				document.write("입력받은 숫자보다 작습니다! <br>");
			}
			count++;
		}
	}
	document.write(count + "번만에 정답!");

}