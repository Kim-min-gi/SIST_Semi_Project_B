<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<!-- 주소 검색 -->	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
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
		
				<form class="col-md-10 mx-auto" action="./update" method="post" enctype="multipart/form-data">
			
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
				
				<div class="mb-3">
				    <input type="hidden" class="form-control" value="${dto.num}" name="num">
				</div>
				
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
					<label for="restLocation" class="form-label">식당 위치</label><br>
				    
					<input type="text" id="sample3_postcode" value="${dto.restPostcode}" placeholder="우편번호" name="restPostcode">
					<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample3_address" value="${dto.restAddress}" placeholder="주소" name="restAddress"><br>
					<input type="text" id="sample3_detailAddress" value="${dto.restAddressDt}" placeholder="상세주소"  name="restAddressDt">
					<input type="text" id="sample3_extraAddress" value="${dto.restAddressRf}" placeholder="참고항목" name="restAddressRf">
					
					<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
					</div>
					</div>
					
					<div class="mb-3">
					<label for="restPhone" class="form-label">전화번호</label>
				    <input type="text" class="form-control" value="${dto.restPhone}" name="restPhone" id="restPhone">
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
				    <input type="text" class="form-control" value="${dto.restTime}" name="restTime" id="restTime">
					</div>
					
					<div class="mb-3">
					<label for="holiday" class="form-label">휴무일</label>
				    <input type="text" class="form-control" value="${dto.holiday}" name="holiday" id="holiday">
					</div>
					
					<div class="mb-3">
				    <input type="hidden" class="form-control" readonly="readonly" value="${dto.requestAccept}" name="requestAccept" id="requestAccept">
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
				<label for="file" class="form-label">파일 첨부</label>
			</div>
			
		
		
			<div class="bottom-right">
				<button type="submit" class="btn btn-default">수정하기</button>
			</div>
		
		</form>
	</div> <!-- //form-area  -->
	
	</div>
	
	<c:import url="../temp/boot_footer.jsp"></c:import>
	
	<script type="text/javascript" src="../resources/js/addressSearch.js"></script>
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