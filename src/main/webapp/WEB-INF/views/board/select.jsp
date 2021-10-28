<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../temp/boot_head.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="../resources/css/select.css"/> 
</head>
<body>

	<c:import url="../temp/boot_nav.jsp"></c:import>

	<div class="container">
	<!--article  -->
		<div class="article-wrap"> 
			<div class="title-area"> 
			
			<c:if test="${board eq 'community'}">
				<p class="title-category">
					<c:choose>
						<c:when test="${dto.category eq 1}">[자유]</c:when>
						<c:when test="${dto.category eq 2}">[식당이야기]</c:when>
						<c:when test="${dto.category eq 3}">[음식이야기]</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</p>
			</c:if>
			
				<h3 class="title-text"> ${dto.title} </h3> 
				<div class="">
					<div class="title-top"> ${dto.writer} </div>
					<div class="title-bottom"> 
						${dto.regDate} 
						${dto.hits}
					</div>
				</div>
			</div> 
			

			<c:forEach items="${dto.boardFiles}" var="list">
				<div>
					<a href="./fileDown?fileName=${list.fileName}&oriName=${list.oriName}">${list.oriName}</a> 
				</div>
			</c:forEach>
			
			<!-- request: 가게 정보 영역 -->
			<c:if test="${board eq 'request'}">
				<div class="info-area">
					<table class="table">
					<thead>
						<tr>
							<th scope="col">항목</th>
							<th scope="col">식당 정보</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<th scope="row">상호명</th>
							<th>${dto.restName}</th>
						</tr>
						<tr>
							<th scope="row">우편번호</th>
							<th>${dto.restPostcode}</th>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<th>${dto.restAddress} ${dto.restAddressDt} ${dto.restAddressRf}</th>
						</tr>
						<tr>
							<th scope="row">전화번호</th>
							<th>${dto.restPhone}</th>
						</tr>
						<tr>
							<th scope="row">식당 분류</th>
							<th>${category}</th>
						</tr>
						<tr>
							<th scope="row">영업시간</th>
							<th>${dto.restTime}</th>
						</tr>
						<tr>
							<th scope="row">휴일</th>
							<th>${dto.holiday}</th>
						</tr>
					
					</tbody>
					</table>
				
				</div>
			</c:if>
			
			<!-- 가게 정보 영역 끝  -->
			
			
			<div>
				${dto.contents}
			</div>
			
			<!-- request: 승인 버튼 -->
			<%-- <c:if test="${board eq 'request' and not empty member and member.id eq 'admin'}"> --%>
			<c:if test="${board eq 'request'}">
				<hr>
				<div class="form-inline accept-btn" align="right">
					<button type="submit" data-board-num="${dto.num}" id="accept" class="btn btn-warning">승인</button>	
				
					<button type="submit" data-board-num="${dto.num}" id="reject" class="btn btn-warning">승인 취소</button>	
				</div>
			
			</c:if>
			<!-- 승인버튼 끝 -->
			
			
			<!-- 댓글 영역 -->
			<div class="comment-area">
			
				<div id="comment-info">
					<strong>댓글</strong>
				</div>
			
				<div id="comment-list" class="comment-list">
				</div> <!-- //comment-list -->
				
				<div class="comment-write">
					<input type="hidden" id="comment-id" value="${dto.id}">
					<div id="comment-writer" class="comment-writer">${dto.id}</div>
					<textarea id="comment-contents" class="comment-writebox" rows="2" cols="" placeholder="댓글을 작성해주세요."></textarea>
				
					<div class="comment-bottom">
						<div class="bottom-right">
							<button type="button" id="comment-write-btn" class="comment-write-btn">등록</button>
						</div>
					</div>
				</div> <!-- //comment-write -->
				
				
			</div>
			<!-- // 댓글 영역 끝 -->
			
			
			<!-- 하단 수정,삭제,목록 부분 -->
			<div class="article-bottom">
				<c:if test="${member.id == dto.id}">
					<div class="bottom-left">
						<a class="btn btn-default list-btn" href="./update?num=${dto.num}"> 수정 </a>
						<a class="btn btn-default list-btn" href="./delete?num=${dto.num}"> 삭제 </a>
					</div>
				</c:if>
				<div class="bottom-right">
					<a class="btn btn-default list-btn" href="./list"> 목록 </a>
				</div>
			</div>
			<!-- //하단 수정 삭제 목록 부분 끝 -->
		</div> <!-- //article  -->
		
		
	</div>

	<script>
		let boardNum = "${dto.num}";
		 $('.navi').addClass('affix');
	 </script>
	 
	 <script type="text/javascript" src="../resources/js/select.js"></script>

	<c:import url="../temp/boot_footer.jsp"></c:import>
</body>
</html>