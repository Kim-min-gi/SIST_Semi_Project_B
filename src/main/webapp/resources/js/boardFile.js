/**
 * boardFile.js
 * 게시판 파일 추가 js
 */
 
 let file = '<div class="input-inline f" id="">'+
 				'<div class="col-md-10">'+
   				'<input type="file" class="form-control" name="files" id="photo"></div>'+
   				'<div class="col-md-2">'+
   				'<button class="btn btn-outline-secondary del" type="button">파일 삭제</button>'+
				'</div></div>';
				

//추가할 수 있는 총 파일 수
const TOTLACOUNT = 5;

let fileCount = 0;
 
 
//파일 추가
$('#fileAdd').click(function() {
	
	if (fileCount < TOTLACOUNT) {
		$('#fileAddArea').append(file);
		fileCount++;
	} else {
		alert('파일 첨부는 최대 5개까지만 가능합니다.');
	}
	
});



//파일 삭제
$('#fileAddArea').on('click', '.del', function() {
	fileCount--;
	$(this).parent().parent().remove();
});