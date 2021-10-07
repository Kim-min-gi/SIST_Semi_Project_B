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
			글쓰기
		</h3>
	
		<div class="form-area">
		
				<form class="col-md-10 mx-auto" action="./insert" method="post" enctype="multipart/form-data">
			
				<c:if test="${board eq 'request'}">
					<div class="mb-3">
						<label for="title" class="form-label">제목</label>
					    <input type="text" class="form-control" name="title" id="title" placeholder="제목">
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
					    	<input type="text" class="form-control" name="title" id="title" placeholder="제목">
					     </div>
					</div>
				</c:if>
				
				<!-- 아이디 나중에 삭제 -->
				<div class="mb-3">
				    <label for="id" class="form-label">아이디</label>
				    <input type="text" class="form-control" name="id" id="id" placeholder="아이디">
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
						  <input class="form-check-input" type="radio" name="restCategory" value="1">
						  <label class="form-check-label" for="inlineRadio1">한식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="restCategory" value="2">
						  <label class="form-check-label" for="inlineRadio1">양식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="restCategory" value="3">
						  <label class="form-check-label" for="inlineRadio1">일식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="restCategory" value="4">
						  <label class="form-check-label" for="inlineRadio1">중식</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="restCategory" value="5">
						  <label class="form-check-label" for="inlineRadio1">아시아</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="restCategory" value="6">
						  <label class="form-check-label" for="inlineRadio1">카페,디저트</label>
						</div>
						
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="radio" name="restCategory" value="7">
						  <label class="form-check-label" for="inlineRadio1">기타</label>
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
	  			<textarea class="form-control" cols=""  name="contents" id="summernote"></textarea>
			</div>
			
			<!-- 파일 첨부 -->
			<div class="mb-3">
				<label for="file" class="form-label">파일 첨부</label>
				<button type="button" id="fileAdd" class="btn btn-default">추가</button>
			</div>
			<div id="fileAddArea">
			
			</div>
		
		
		
			<div class="bottom-right">
				<button type="submit" class="btn btn-default">글쓰기</button>
			</div>
		
		</form>
	</div> <!-- //form-area  -->
	
	</div>
	
	<c:import url="../temp/boot_footer.jsp"></c:import>
	
	

	<script type="text/javascript" src="../resources/js/boardFile.js"></script>
	<script>
	
		$('.navi').addClass('affix');
	
		/* $(document).ready(function() {
			$('#summernote').summernote({
				height: 400
			});
		}); */
		
	 </script>
	 	
</body>
</html>