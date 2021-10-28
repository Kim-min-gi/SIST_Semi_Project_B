/**
 * 
 */
$(function() {
	getReviewList(1, "newest");
	
	
})




/* ------------------- 슬라이드 ----------------------*/ 

//slide-wrap
var slideWrapper = document.getElementById('slider-wrap');
//current slideIndexition
var slideIndex = 0;
//items
var slides = document.querySelectorAll('#slider-wrap ul li');
//number of slides
var totalSlides = slides.length;
//get the slide width
var sliderWidth = slideWrapper.clientWidth;
//set width of items
slides.forEach(function (element) {
    element.style.width = sliderWidth + 'px';
})
//set width to be 'x' times the number of slides
var slider = document.querySelector('#slider-wrap ul#slider');
slider.style.width = sliderWidth * totalSlides + 'px';

// next, prev
var nextBtn = document.getElementById('next');
var prevBtn = document.getElementById('previous');
nextBtn.addEventListener('click', function () {
    plusSlides(1);
});
prevBtn.addEventListener('click', function () {
    plusSlides(-1);
});

// hover
slideWrapper.addEventListener('mouseover', function () {
    this.classList.add('active');
    clearInterval(autoSlider);
});
slideWrapper.addEventListener('mouseleave', function () {
    this.classList.remove('active');
    autoSlider = setInterval(function () {
        plusSlides(1);
    }, 3000);
});


function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlides(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    slideIndex = n;
    if (slideIndex == -1) {
        slideIndex = totalSlides - 1;
    } else if (slideIndex === totalSlides) {
        slideIndex = 0;
    }

    slider.style.left = -(sliderWidth * slideIndex) + 'px';
    pagination();
}

//pagination
slides.forEach(function () {
    var li = document.createElement('li');
    document.querySelector('#slider-pagination-wrap ul').appendChild(li);
})

function pagination() {
    var dots = document.querySelectorAll('#slider-pagination-wrap ul li');
    dots.forEach(function (element) {
        element.classList.remove('active');
    });
    dots[slideIndex].classList.add('active');
}

pagination();
var autoSlider = setInterval(function () {
    plusSlides(1);
}, 3000);
    



















/* ---------------- 리뷰 ------------------ */

/* 리뷰 리스트 출력 */
function getReviewList(pn, filter) {
	$.ajax({
		type: "GET"
		, url: "./getReviewList"
		, data: {
			restNum : restNum
			, filter : filter
			, pn : pn
		}
		, success: function(result) {
			$("#review-list").append(result);
		}
	})
}

/* 필터 */
$("#search-filter").on('change', function() {
	$("#review-list").html('');
	getReviewList(1, $(this).val());
});


/* 리뷰 더보기 버튼.. */
$("#review-list").on('click', '.moreReview', function() {
	let pn = $(this).attr('data-review-pn');
	let filter = $(this).attr('data-review-filter');
	
	getReviewList(pn, filter);
	$(this).remove();
})




/* 리뷰 삭제 */
$("#review-list").on('click', '.delete', function() {
	if (!confirm('리뷰를 삭제하시겠습니까?')) {
		return;
	}
	
	let reviewNum = $(this).attr('data-review-num');
	
	$.ajax({
		type: "POST"
		, url: "./setReviewDelete"
		, data: {
			reviewNum : reviewNum
		}, success: function(result) {
			if (result == 1) {
				alert ('리뷰가 삭제되었습니다.');
			}
			window.location.reload();
		}
	})
})



/*-------------------------------모달창-----------------------------*/
/* 모달 - 별점 */
//show.bs.modal -- modal 창이 열릴 때 실행되는 이벤트 

$('#writeModal').on('show.bs.modal', function (event) {
	console.log('write Modal');
	  var modal = $(this)
	  modal.find('.modal-title').text('리뷰 작성');
});

//리뷰 작성(모달)폼 전송
$("#writeBtn").on('click', function() {
	
	if ($('.rating').val() == '') {
		alert('평점을 선택해주세요.');
		return;
	}
	
	$("#reviewForm").submit();
})

//리뷰 수정 모달
$(document).on('show.bs.modal', '#updateModal', function(event) {
	console.log('open modal');
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  let reviewNum = button.attr('data-review-num');
	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	  var modal = $(this);
	  
	  $('.reviewNum').val(reviewNum);
	  modal.find('.modal-title').text('리뷰 수정');
	  modal.find('.review-contents').text($('#content'+reviewNum).text().trim());
	  setRating($('#rating'+reviewNum).attr('data-rating'));
	  
	  /* 파일 */
	  let fileList = $("#img"+reviewNum).children('img');
	  let filesLength = fileList.length;
	  setUpdateCount(filesLength);
	  console.log('length:'+filesLength);
	  
	  let files = '';
		for (let i = 0; i < filesLength; i++) {
			files += "<div>"+fileList[i].dataset.oriName;
			files += "<span class='fileDelete' data-files-num='"+fileList[i].dataset.fileNum+"' data-files-name='"+fileList[i].dataset.fileName+"'>";
			files += "X </span></div>";
		}
	  files += '</div>';
	  
	  modal.find("#oldFileArea").html(files);
	  
})


$('#updateModal').on('hidden.bs.modal', function (event) {
	console.log('hidden');	
	//$(this).removeData('bs.modal');
})

//리뷰 작성(모달)폼 전송
$("#updateBtn").on('click', function() {
	
	if ($('.rating').val() == '') {
		alert('평점을 선택해주세요.');
		return;
	}
	
	$("#reviewUpdateForm").submit();
})


//별점 바뀔 때마다
$(".rating-check").on('change', function() {
	ckValue = $(this).attr('data-value');
	
	setRating(ckValue);
});

/*몇점 체크했는지 확인하고 체크박스 채워주기 ..*/
function setRating(ckValue) {
	
	//rating 파라미터값 세팅
	$(".rating").val(ckValue);
	console.log('cv:'+ckValue);
	
	let ckItems = $(".rating-check");
	
	//별 다 지우기
	ckItems.each(function() {
		$(this).prop('checked', false);
	});
	
	//클릭한 별까지 채우기
	ckItems.each(function() {
		if ($(this).attr('data-value') <= ckValue) {
			$(this).prop('checked', true);
		} 
	});
}




//리뷰 수정 -- 파일//
let updateFileCount = 0;
//추가
$('#updateFileAdd').on('click', function() {
	
	if (updateFileCount < TOTLACOUNT) {
		$('#updateFileAddArea').append(file);
		updateFileCount++;
	} else {
		alert('파일 첨부는 최대 5개까지만 가능합니다.');
	}
	
});

//삭제
$('#updateFileAddArea').on('click', '.del', function() {
	updateFileCount--;
	$(this).parent().parent().remove();
	
});


//기존 파일 삭제 버튼
$("#oldFileArea").on('click', '.fileDelete', function() {
	
	console.log('delete');
		let fileNum = $(this).attr('data-files-num');
		let fileName = $(this).attr('data-files-name');
		
		$(this).parent().remove();
		updateFileCount--;
		
		let removeFile = "<input type='hidden' name='removeFileNum' value='"+fileNum+"'>";
		removeFile += "<input type='hidden' name='removeFileName' value='"+fileName+"'>";
		$("#removeFileArea").append(removeFile);
		
		

	})

function setUpdateCount(fileSize) {
	updateFileCount = fileSize;
}
