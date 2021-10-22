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

<!-- slick 이미지 슬라이드 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

<!-- 식당 정보 영역 -->
<div class="container">

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
	
	</div><!-- //이미지 슬라이드 영역  -->
	
	<!-- 식당 이름 영역 -->
	<div class="info-title">
	
		<h3>식당 이름 : ${dto.restName}</h3>
	
	</div><!--// 식당 이름 영역 -->
	
	<!-- 리뷰, 찜 버튼 영역 -->
	<div class="info-review">
		<h3>리뷰 찜 버튼</h3>
	</div><!--// 리뷰, 찜 버튼 영역 -->
	
	<!-- 식당 정보 영역 -->
	<div class="info-detail">
		test
	</div><!-- //식당 정보 영역 -->
	
	<!-- 지도 영역 -->
	<div class="info-map">
		map
	</div><!-- //지도 영역 -->
	

</div>
<!-- 식당 정보 영역 끝 -->

<c:import url="../temp/boot_footer.jsp"></c:import>

<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
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
	$('.navi').addClass('affix');
</script>

</body>
</html>