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
//댓글 수정
$("#comment-list").on('click', '.updateBtn', function() {
	let commentNum = $(this).parents('.comment-content').attr('data-comment-num');
	let contents = $(this).prev().val();
	
	let $pSelector = $(this).parents('.comment-content');
	
	$.ajax({
		type: "POST"
		, url: "./setCommentUpdate"
		, data: {
			commentNum : commentNum
			, contents : contents
		}
		, success: function(result) {
			if (result > 0) {
				$pSelector.children('div').text(contents);
				$pSelector.children('div').css('display', 'block');
				$pSelector.children('.commentUpdateForm').remove();
				alert('댓글이 정상적으로 수정되었습니다.');
			} else {
				alert('댓글 수정에 실패했습니다.');
			}
		}
		, error: function() {
			alert('댓글 수정에 실패했습니다.');
		}
	})
})


//댓글 수정 취소
$("#comment-list").on('click', '.cancelBtn', function() {
	console.log($(this));
	$(this).parents('.comment-content').children('div').css('display', 'block');
	$(this).parent().remove();
})


//댓글 수정 - 수정 폼
$("#comment-list").on('click', '.update', function() {
	/*
	if($('#comment-content').hasClass('commentUpdateForm')) {
		console.log('ddd');
	}*/
	
	let num = $(this).attr("data-comment-num");
	content= $("#content"+num).text().trim();
	$("#content"+num).children().css('display', 'none');
	let ta = '<div class="commentUpdateForm">';
	ta = ta + '<textarea class="form-control" cols=""  name="contents" id="contents" rows="6">';
	ta = ta + content.trim() +'</textarea>';
	ta = ta + '<button type="button" id="" class="updateBtn btn">수정</button>';
	ta = ta + '<button type="button" id="" class="cancelBtn btn">취소</button>';
	ta = ta + "</div>";
	$("#content"+num).append(ta);
})

//댓글 수정 끝

//댓글 삭제
$("#comment-list").on('click', '.delete', function() {
	let commentNum = $(this).attr('data-comment-num');
	
	$.ajax({
		type: "GET"
		, url: "./setCommentDelete"
		, data: {
			commentNum : commentNum
		}
		, success: function(result) {
			if (result == 1) {
				alert('댓글이 정상적으로 삭제되었습니다.');
			}
			getCommentList(1);
		}
	})

})

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

//페이지 번호 누를 때 이벤트
$("#comment-list").on('click', '.page-link', function() {
	let pn = $(this).attr('data-comment-pn');
	
	getCommentList(pn);
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