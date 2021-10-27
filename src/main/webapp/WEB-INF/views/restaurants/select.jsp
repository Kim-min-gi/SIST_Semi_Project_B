<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<c:import url="../temp/boot_head.jsp"></c:import>

<link rel="stylesheet" type="text/css" href="../resources/css/restaurantsSelect.css">

<!-- fontawesome 아이콘 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->

<!-- slick 이미지 슬라이드 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

<!-- 식당 정보 영역 -->
<div class="container">
	<div class="info-container">
		<!-- 이미지 슬라이드 영역  -->
		<div class="img-wrapper">
			<div class="img-slider">
				
				
				 <div>1</div>
			    <div>2</div>
			    <div>3</div>
			    <div>4</div>
			    <div>5</div>
			    <div>6</div>
			    <div>7</div>
			    <div>8</div>
			    <div>9</div>
			    <div>10</div>
			</div>
		</div>
		
		<!-- //이미지 슬라이드 영역  -->
		
		<!-- 식당 이름 영역 -->
		<div class="info-title">
			<div class="info-title-name">
				${dto.restName}
			</div>
			<div class="info-title-star">
				${dto.starVal}
			</div>
			
			<div class="info-title-icon">
				<i class="fas fa-eye fa-lg"></i>
				${dto.hits}
				<i class="fas fa-heart fa-lg"></i>
				${dto.likes}
			</div>
		</div><!--// 식당 이름 영역 -->
		
		<!-- 리뷰, 찜 버튼 영역 -->
		<div class="info-review">
			<div class="info-review-write" data-toggle="modal" data-target="#writeModal">
				<i class="fas fa-edit fa-5x"></i>
				<div>리뷰쓰기</div>
			</div>
			
			<div class="info-review-heart">
				<i class="far fa-heart fa-5x"></i>
				<div>찜하기</div>
			</div>
		</div><!--// 리뷰, 찜 버튼 영역 -->
		
		<!-- 식당 정보 영역 -->
		<div class="info-detail">
			<table class="table">
						<tbody>
							<tr>
								<th scope="row">우편번호</th>
								<th>${dto.restPostcode}</th>
							</tr>
							
							<tr>
								<th scope="row">주소</th>
								<th>${dto.restAddress}  ${dto.restAddressDT} ${dto.restAddressRF}</th>
							</tr>
							
							<tr>
								<th scope="row">전화번호</th>
								<th>${dto.restPhone}</th>
							</tr>
							
							<tr>
								<th scope="row">식당 분류</th>
								<th>
									${category}
								</th>
							</tr>
							
							<tr>
								<th scope="row">영업시간</th>
								<th>${dto.restTime}</th>
							</tr>
							
							<tr>
								<th scope="row">휴일</th>
								<th>${dto.holiDay}</th>
							</tr>
						</tbody>
						</table>
		</div><!-- //식당 정보 영역 -->
		
		<!-- 지도 영역 -->
		<div class="info-map">
			<div class="info-map-area">
				<div id="map-area" data-address = "${dto.restAddress}" style="width:100%;height:300px;"></div>
			</div>
		</div><!-- //지도 영역 -->
	</div>	


	<!-- 리뷰 -->
	<div class="review-area">
		<div class="review-info">
			<strong>리뷰</strong>
		</div>
		
		<div id="review-list" class="review-list">
		</div>
	</div> <!-- //리뷰 -->

</div>
<!-- 식당 정보 영역 끝 -->

<!-- 리뷰 작성 모달 -->
<div class="modal fade" id="writeModal" tabindex="-1" role="dialog" aria-labelledby="writeModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="writeModalLabel">리뷰 작성</h4>
      </div>
      <div class="modal-body">
      	<!-- form -->
        <form action="./setReview?restNum=${dto.restNum}" method="post"  id="reviewForm" enctype="multipart/form-data">
          <div class="form-group rating-group">
            
          	<input type="checkbox" name="ratingC" id="rating1" data-value="1" class="rating-check">
          	<label for="rating1"></label>
          	<input type="checkbox" name="ratingC" id="rating2" data-value="2" class="rating-check">
          	<label for="rating2"></label>
          	<input type="checkbox" name="ratingC" id="rating3" data-value="3" class="rating-check">
          	<label for="rating3"></label>
          	<input type="checkbox" name="ratingC" id="rating4" data-value="4" class="rating-check">
          	<label for="rating4"></label>
          	<input type="checkbox" name="ratingC" id="rating5" data-value="5" class="rating-check">
          	<label for="rating5"></label>
          	<input class="rating" type="hidden" name="rating">
          	
          	
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">음식점 리뷰를 작성해주세요!</label>
            <textarea rows="10" name="contents" class="form-control review-contents" id="review-contents"></textarea>
          </div>
          <div class="form-group">
            <label for="photo" class="control-label">사진</label>
			<button type="button" id="fileAdd" class="btn btn-default">추가</button>
			<div id="fileAddArea">
			</div>
          </div>
          
        </form> 
        <!-- //form -->
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">X</button> -->
        <button id="writeBtn" type="button" class="btn review-write-btn">리뷰 작성</button>
      </div>
    </div>
  </div>
</div>
<!-- 리뷰 작성 모달 끝 -->


<!-- 리뷰 수정 모달 -->
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="updateModal">리뷰 수정</h4>
      </div>
      <div class="modal-body">
      	<!-- form -->
        <form action="./setReviewUpdate" method="post"  id="reviewUpdateForm" enctype="multipart/form-data">
          <input class="reviewNum" type="hidden" name="reviewNum">
          <div class="form-group rating-group">
            
          	<input type="checkbox" name="ratingC" id="rating1" data-value="1" class="rating-check">
          	<label for="rating1"></label>
          	<input type="checkbox" name="ratingC" id="rating2" data-value="2" class="rating-check">
          	<label for="rating2"></label>
          	<input type="checkbox" name="ratingC" id="rating3" data-value="3" class="rating-check">
          	<label for="rating3"></label>
          	<input type="checkbox" name="ratingC" id="rating4" data-value="4" class="rating-check">
          	<label for="rating4"></label>
          	<input type="checkbox" name="ratingC" id="rating5" data-value="5" class="rating-check">
          	<label for="rating5"></label>
          	<input class="rating" type="hidden" name="rating">
          	
          	
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">음식점 리뷰를 작성해주세요!</label>
            <textarea rows="10" name="contents" class="form-control review-contents" id="review-contents"></textarea>
          </div>
          <div class="form-group">
            <label for="photo" class="control-label">사진</label>
			<button type="button" id="updateFileAdd" class="btn btn-default">추가</button>
			<div id="oldFileArea">
			</div>
			<div id="updateFileAddArea">
			</div>
			<div id="removeFileArea">
			</div>
          </div>
          
        </form> 
        <!-- //form -->
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">X</button> -->
        <button id="updateBtn" type="button" class="btn review-update-btn">리뷰 수정</button>
      </div>
    </div>
  </div>
</div>
<!-- 리뷰 수정 모달 끝 -->


<c:import url="../temp/boot_footer.jsp"></c:import>

<script>
$('.img-slider').slick({
	  dots: true,
	  infinite: false,
	  speed: 300,
	  slidesToShow: 4,
	  slidesToScroll: 4,
	  responsive: [
	    {
	      breakpoint: 1024,
	      settings: {
	        slidesToShow: 3,
	        slidesToScroll: 3,
	        infinite: true,
	        dots: true
	      }
	    },
	    {
	      breakpoint: 600,
	      settings: {
	        slidesToShow: 2,
	        slidesToScroll: 2
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
	        slidesToShow: 1,
	        slidesToScroll: 1
	      }
	    }
	    // You can unslick at a given breakpoint now by adding:
	    // settings: "unslick"
	    // instead of a settings object
	  ]
	});
</script>

<script>
	const mSession = "${member}"; //멤버 세션

	console.log('mSession:'+mSession);

	let restNum = "${dto.restNum}";
	
	$('.navi').addClass('affix');
	
	
</script>

<script type="text/javascript" src="../resources/js/restaurantsSelect.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=af51861377cde9d3407dc84913b62a9c&libraries=services"></script>
<script type="text/javascript" src="../resources/js/map.js"></script>
<script type="text/javascript" src="../resources/js/boardFile.js"></script> 		




</body>
</html>