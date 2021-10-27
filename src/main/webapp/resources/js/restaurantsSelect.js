/**
 * 
 */
getReviewList(1);
 

/* 리뷰 리스트 출력 */
function getReviewList(pn) {
	$.ajax({
		type: "GET"
		, url: "./getReviewList"
		, data: {
			restNum : restNum, 
			pn : pn
		}
		, success: function(result) {
			$("#review-list").append(result);
		}
	})
}



/* 리뷰 더보기 버튼.. */
$("#review-list").on('click', '.moreReview', function() {
	let pn = $(this).attr('data-review-pn');
	
	getReviewList(pn);
	$(this).remove();
})







/* 모달 - 별점 */
