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

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>


	<div class="container">
		<h3 class="title-text">
			<c:if test="${board eq 'request'}">요청 </c:if>
			<c:if test="${board eq 'community'}">커뮤니티 </c:if>
			글 수정
		</h3>
	
		<div class="form-area">
		
				<form class="col-md-10 mx-auto" action="./insert" method="post" enctype="multipart/form-data">
			
				<c:if test="${board eq 'request'}">
					<div class="mb-3">
						<label for="title" class="form-label">제목</label>
					    <input type="text" class="form-control" value="${dto.title}" name="title" id="title">
					</div>
				</c:if>
				
								
				<c:if test="${board eq 'community'}">
					<div class="form-inline">
						<div class="form-group title-category-area col-md-2">
							<select name="category" class="form-control ">
								<option value="1">자유</option>
								<option value="2">식당이야기</option>
								<option value="3">음식이야기</option>
							</select>
						</div>
						<div class="form-group title-area col-md-10">
					    	<input type="text" class="form-control" value="${dto.title} name="title" id="title">
					     </div>
					</div>
				</c:if>
				
				<!-- 아이디 나중에 삭제 -->
				<div class="mb-3">
				    <label for="id" class="form-label">아이디</label>
				    <input type="text" class="form-control" value="${dto.id}" readonly="readonly" name="id" id="id">
				</div>
				
				<div class="mb-3">
				    <label for="writer" class="form-label">작성자</label>
				    <input type="text" class="form-control" value="${dto.writer}" readonly="readonly" name="writer" id="writer">
				</div>

				
				<!-- 요청 폼 -->
				<c:if test="${board eq 'request'}">
				<hr>
				<div>
					<div class="mb-3">
					<label for="restName" class="form-label">식당 이름</label>
				    <input type="text" class="form-control" value="${dto.restName}" name="restName" id="restName">
					</div>
					
					<div class="mb-3">
					<label for="restLocation" class="form-label">식당 위치</label>
				    <input type="text" class="form-control" value="${dto.restLocation}" name="restLocation" id="restLocation">
					</div>
					
					<div class="mb-3">
					<label for="restPhone" class="form-label">전화번호</label>
				    <input type="text" class="form-control" value="restPhone" name="restPhone" id="restPhone">
					</div>
					
					<!-- 카테고리  -->
					<div class="mb-3">
					<label for="" class="form-label">카테고리</label>
					
					<c:choose>
						<c:when test="${dto.restCategory eq 'korean'}">
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="korean" checked="checked">
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
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
						<c:when test="${dto.restCategory eq 'western'}">
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="korean">
						  <label class="form-check-label" for="inlineCheckbox1">한식</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="western" checked="checked">
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
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
						<c:when test="${dto.restCategory eq 'japanese'}">
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="korean">
						  <label class="form-check-label" for="inlineCheckbox1">한식</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="western">
						  <label class="form-check-label" for="inlineCheckbox2">양식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="japanese" checked="checked">
						  <label class="form-check-label" for="inlineCheckbox2">일식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="chinese">
						  <label class="form-check-label" for="inlineCheckbox2">중식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
						<c:when test="${dto.restCategory eq 'chinese'}">
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
						  <input class="form-check-input" type="checkbox" name="restCategory" value="chinese" checked="checked">
						  <label class="form-check-label" for="inlineCheckbox2">중식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
						<c:when test="${dto.restCategory eq 'asia'}">
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
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia" checked="checked">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
						<c:when test="${dto.restCategory eq 'cafe'}">
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
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe" checked="checked">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
						<c:when test="${dto.restCategory eq 'others'}">
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
						  <input class="form-check-input" type="checkbox" name="restCategory" value="asia">
						  <label class="form-check-label" for="inlineCheckbox2">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="cafe">
						  <label class="form-check-label" for="inlineCheckbox2">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" name="restCategory" value="others" checked="checked">
						  <label class="form-check-label" for="inlineCheckbox2">기타</label>
						</div>
						</c:when>
						
					</c:choose>
					
					</div>
					
					
					<!-- 카테고리 -->
					
					<div class="mb-3">
					<label for="restTime" class="form-label">영업 시간</label>
				    <input type="text" class="form-control" value="${dto.restTime}" name="restTime" id="restTime">
					</div>
					
					<div class="mb-3">
					<label for="holiday" class="form-label">휴무일</label>
				    <input type="text" class="form-control" value="${dto.holiday}" name="holiday" id="holiday">
					</div>
				
			</div>
			<hr>
			
			</c:if>
			<!-- 요청 폼 끝  -->
			
			
			<div class="mb-3">
			    <label for="contents" class="form-label"></label>
	  			<textarea class="form-control" cols="" name="contents" id="contents" rows="10">${dto.contents}</textarea>
			</div>
			
			<!-- 파일 첨부 -->
			<div class="mb-3">
				<label for="contents" class="form-label">파일 첨부</label>
				<button type="button" id="fileAdd" class="btn btn-default">추가</button>
				
			
			
			</div>
		
		
		
			<div class="bottom-right">
				<button type="submit" class="btn btn-default">수정하기</button>
			</div>
		
		</form>
	</div> <!-- //form-area  -->
	
	</div>
	
	<c:import url="../temp/boot_footer.jsp"></c:import>
	
	<script>
		$('#contents').summernote({
			height: 400
		});
		
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