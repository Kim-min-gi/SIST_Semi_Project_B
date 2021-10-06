/**
 * 
 */
 
const useId = document.getElementById('useId');

useId.addEventListener('click', function(){
	let id = window.document.getElementById('id').value;
	opener.document.getElementById('id').value = id;
	close();
});