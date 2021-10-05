/**
 * 
 */
 
 const checkAll = document.getElementById('checkAll');
 const checks = document.getElementsByClassName('checks');
 const btn = document.getElementById('btn');
 
//모두동의 버튼
checkAll.addEventListener('click', function(){
	for(let ch of checks) {
		ch.checked = checkAll.checked
	}
});
 
for(let ch of checks) {
	ch.addEventListener('click', function() {
		let result = true;
		
		for(c of checks) {
			if(!c.checked){
				result = false;
				break;
			}
		}
		checkAll.checked=result;
	});
}

//회원가입 버튼
btn.addEventListener('click', function(){
	if(checkAll.checked) {
		location.href="./join";
	} else {
		alert('필수 약관에 동의 해야 합니다.');
	}
});