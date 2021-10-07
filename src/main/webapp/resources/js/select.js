/**
 * select.js
 */
 
//승인 버튼
$('#accept').click(function(){
	
	let num = $(this).attr("data-board-num");
	let accept = 'Y';
	
	$.post("./accept", {requestAccept:accept, num:num}, function(result){
		result = result.trim();
			if(result>0){
				alert("승인 성공");
			}else{
				alert("승인 실패")
			}
	})
	
})

$('#reject').click(function(){
	
	let num = $(this).attr("data-board-num");
	let accept = 'N';
	
	$.post("./accept", {requestAccept:accept, num:num}, function(result){
		result = result.trim();
			if(result>0){
				alert("승인 취소 성공");
			}else{
				alert("승인 취소 실패")
			}
	})
	
})








/* 댓글 */
$("#comment-write-btn").click(function() {
	let id = $("#comment-id").val();
	let writer = $("#comment-writer").val();
	let contents = $("#comment-contents").val();
	
	$.ajax({
		type: "POST"
		, data: {
			num : boardNum
			, id : id
			, writer : writer
			, contents : contents
		}, function(result) {
			console.log(result);
		}
	})
})