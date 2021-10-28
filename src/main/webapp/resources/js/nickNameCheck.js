/**
 * 
 */
 
const useNickName = document.getElementById('useNickName');

useNickName.addEventListener('click', function(){
	let nickName = window.document.getElementById('nickName').value;
	opener.document.getElementById('nickName').value = nickName;
	close();
});