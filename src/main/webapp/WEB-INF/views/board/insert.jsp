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
				    <input type="text" class="form-control" name="id" id="id" placeholder="아이디" value="${member.id}" readonly="readonly">
				</div>
				
				<div class="mb-3">
				    <label for="writer" class="form-label">작성자</label>
				    <input type="text" class="form-control" name="writer" id="writer" placeholder="작성자" value="${member.id}" readonly="readonly">
				</div>

				<!-- ------------------------- community area --------------------------- -->
				
				<c:if test="${board eq 'community'}">
				
					<div class="mb-3">
					    <label for="contents" class="form-label"></label>
			  			<textarea class="form-control" cols=""  name="contents" id="summernote"></textarea>
					</div>
					
						<div class="mb-3">
							<label for="boardFiles" class="form-label">파일 첨부</label>
							<button type="button" id="fileAdd" class="btn btn-default">추가</button>
						</div>
						<div id="fileAddArea">
						</div>
			
			
				<div class="bottom-right">
					<button type="submit" class="btn btn-default">글쓰기</button>
				</div>
				</c:if>
			<!-- ------------------------- community area 끝 --------------------------- -->
				
			
			<!-- ------------------------- request area ---------------------------- -->	
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
					<input type="text" id="sample3_postcode" placeholder="우편번호" name="restPostcode">
					<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample3_address" placeholder="주소" name="restAddress"><br>
					<input type="text" id="sample3_detailAddress" placeholder="상세주소" name="restAddressDt">
					<input type="text" id="sample3_extraAddress" placeholder="참고항목" name="restAddressRf">
					
					<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
					</div>
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
			<hr><!-- 요청 폼 끝  -->
			
			
			<div class="mb-3">
			    <label for="contents" class="form-label"></label>
	  			<textarea class="form-control" cols=""  name="contents" id="summernote"></textarea>
			</div>
			
			
			<div class="input-inline">
				<div class="mb-3">
					<label for="boardFiles" class="form-label">파일 첨부</label>
				</div>
 				<div class="col-md-10">
	   				<input type="file" class="form-control" name="boardFile" id="newFile" onchange="Check();" ></div>
	   				<div class="col-md-2">
	   				<button class="btn btn-outline-secondary del" type="button">파일 삭제</button>
				</div>
				
			</div> 
				
				
			
			<div class="bottom-right">
				<button type="submit" class="btn btn-default" id="fileCheck">글쓰기</button>
			</div>
		
			</c:if>
			
			<!-- ------------------------- request area 끝 ---------------------------- -->
			
		</form>
	</div> <!-- //form-area  -->
	
	</div>
	
	<c:import url="../temp/boot_footer.jsp"></c:import>
	
	

	<script type="text/javascript" src="../resources/js/boardFile.js"></script>
	<script type="text/javascript" src="../resources/js/imageSize.js"></script>
	<script>
	
		$('.navi').addClass('affix');
	
		 $(document).ready(function() {
			$('#summernote').summernote({
				height: 400
			});
		}); 
		
	 </script>
	 
	 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		    // 우편번호 찾기 찾기 화면을 넣을 element
		    var element_wrap = document.getElementById('wrap');
		
		    function foldDaumPostcode() {
		        // iframe을 넣은 element를 안보이게 한다.
		        element_wrap.style.display = 'none';
		    }
		
		    function sample3_execDaumPostcode() {
		        // 현재 scroll 위치를 저장해놓는다.
		        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수
		
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("sample3_extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("sample3_extraAddress").value = '';
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('sample3_postcode').value = data.zonecode;
		                document.getElementById("sample3_address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("sample3_detailAddress").focus();
		
		                // iframe을 넣은 element를 안보이게 한다.
		                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
		                element_wrap.style.display = 'none';
		
		                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
		                document.body.scrollTop = currentScroll;
		            },
		            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
		            onresize : function(size) {
		                element_wrap.style.height = size.height+'px';
		            },
		            width : '100%',
		            height : '100%'
		        }).embed(element_wrap);
		
		        // iframe을 넣은 element를 보이게 한다.
		        element_wrap.style.display = 'block';
		    }
		</script>
		
</body>
</html>