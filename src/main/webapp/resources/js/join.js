/**
 * 
 */
 
const idCheck = document.getElementById('idCheck');
const sign = document.getElementById('sign');
const pws = document.getElementsByClassName('pw');
const accInfo = document.getElementsByClassName('accInfo');
const accInfos = document.getElementById('accInfos');
 
idCheck.addEventListener('click', function(){
	open("./idCheck?id="+id.value, "", "width=400, height=200, top=200, left=300");
});

sign.addEventListener('click', function(){
	//회원정보 중 비어있는 란이 있는지 확인
	let accInfoEmpty = checkEmpty(accInfo);
	
	//비밀번호, 비밀번호 확인이 같은지 확인
	let pwInfoEq = checkEqual(pws[0], pws[1]);
	
	//비밀번호 길이 검사
	let pwInfoLen = checkLength();
	
	if(accInfoEmpty && pwInfoEq && pwInfoLen) {
		accInfos.submit();
	} else if(pwInfoEq == false){
		alert("비밀번호가 같지 않습니다.")
	} else if(pwInfoLen == false){
		alert("비밀번호 길이가 맞지 않습니다.")
	} else {
		alert("빈칸이 있습니다.")
	}
	
	
	function checkEmpty(info) {
		let result = true;
		for(a of info) {
			if(a.value.trim() == ""){
				result = false;
				break;
			}
		}
		return result;
	}
	
	function checkEqual(pw1, pw2) {
		return pw1.value == pw2.value
	}
	
	function checkLength() {
		let length = pws[0].value.trim().length;
		if(length >=6) {
			return true;
		} else {
			return false;
		}
	}
	
});