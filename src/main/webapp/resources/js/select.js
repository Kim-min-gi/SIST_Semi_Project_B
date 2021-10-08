/**
 * select.js
 */

 
getCommentList(1);
 
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

//승인 취소 버튼
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
//댓글 작성
$("#comment-write-btn").click(function() {
	let id = $("#comment-id").val();
	let writer = $("#comment-writer").text().trim();
	let contents = $("#comment-contents").val();
	
	$.ajax({
		type: "POST"
		, url: "./comment"
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


//댓글 리스트 출력
function getCommentList(pn) {
	$.ajax({
		type: "GET"
		, url: "./getCommentList"
		, data: {
			num : boardNum
			, pn : pn
		}
		, success: function(result) {
			result = result.trim();
			$("#comment-list").html(result);
		}, error: function(error) {
			console.log(error);
		}
	})
}