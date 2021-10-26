/**
 * 
 */
getReviewList(1);
 
 
function getReviewList(pn) {
	$.ajax({
		type: "GET"
		, url: "./getReviewList"
		, data: {
			restNum : restNum, 
			pn : pn
		}
		, success: function(result) {
			console.log(result);
			$("#review-list").html(result);
		}
	})
}