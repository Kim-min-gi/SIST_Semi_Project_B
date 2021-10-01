<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
<link href="../resources/css/insert.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>


<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	<div class="container">
	<h1>
	<c:if test="${board eq 'request'}">요청 </c:if>
	<c:if test="${board eq 'community'}">커뮤니티 </c:if>
	글쓰기
	</h1>
	
	<form class="col-md-8 mx-auto" action="./insert" method="post" enctype="multipart/form-data">
	
		<div class="mb-3">
			<label for="title" class="form-label">제목</label>
		    <input type="text" class="form-control" name="title" id="title" placeholder="제목">
		</div>
		
		<div class="mb-3">
		    <label for="writer" class="form-label">작성자</label>
		    <input type="text" class="form-control" name="writer" id="writer" placeholder="작성자">
		</div>
		
		<!-- 요청 폼 -->
		<c:if test="${board eq 'request'}">
		<hr>
		<div>
			<div class="mb-3">
			<label for="restName" class="form-label">식당 이름</label>
		    <input type="text" class="form-control" name="restName" id="restName">
			</div>
			
			<div class="mb-3">
			<label for="restLocation" class="form-label">식당 위치</label>
		    <input type="text" class="form-control" name="restLocation" id="restLocation">
			</div>
			
			<div class="mb-3">
			<label for="restPhone" class="form-label">전화번호</label>
		    <input type="text" class="form-control" name="restPhone" id="restPhone">
			</div>
			
			<!-- 카테고리  -->
			<div class="mb-3">
			<label for="" class="form-label">카테고리</label>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="restCategory" value="korean">
			  <label class="form-check-label" for="inlineCheckbox1">한식</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="restCategory" value="western">
			  <label class="form-check-label" for="inlineCheckbox2">양식</label>
			</div>
			
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="restCategory" value="japanese">
			  <label class="form-check-label" for="inlineCheckbox2">일식</label>
			</div>
			
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="restCategory" value="chinese">
			  <label class="form-check-label" for="inlineCheckbox2">중식</label>
			</div>
			
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
			  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
			</div>
			
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" name="restCategory" value="extra">
			  <label class="form-check-label" for="inlineCheckbox2">기타</label>
			</div>
			
			</div>
			<!-- 카테고리 -->
			
			<div class="mb-3">
			<label for="restTime" class="form-label">영업 시간</label>
		    <input type="text" class="form-control" name="restTime" id="restTime">
			</div>
			
			<div class="mb-3">
			<label for="holiday" class="form-label">휴무일</label>
		    <input type="text" class="form-control" name="holiday" id="holiday">
			</div>
			
		</div>
		<hr>
		
		</c:if>
		<!-- 요청 폼 끝  -->
		
		
		<div class="mb-3">
		    <label for="contents" class="form-label"></label>
  			<textarea class="form-control" cols=""  name="contents" id="contents" rows="10"></textarea>
		</div>
	
	
		<div class="bottom-right">
			<button type="submit" class="btn btn-default">글쓰기</button>
		</div>
	
	</form>
	
	
	</div>
	
	<c:import url="../temp/boot_footer.jsp"></c:import>
	
	<script>
		$('#contents').summernote();
		
		$(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.navi').addClass('affix');
                console.log("OK");
            } else {
                $('.navi').removeClass('affix');
            }
	});
	

	 </script>
</body>
</html>