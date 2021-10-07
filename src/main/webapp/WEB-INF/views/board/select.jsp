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
			

			<c:forEach items="${dto.files}" var="list">
				<div>
					<a href="./fileDown?fileName=${list.fileName}">${list.oriName}</a> 
				</div>
			</c:forEach>
			
			
			<div>
				${dto.contents}
			</div>
			
			<!-- request 승인 버튼 -->
			<c:if test="${board eq 'request'}">
			
				<hr>
				<div>
				
				
				</div>
				
				<div class="form-inline">
					<button type="submit" data-board-num="${dto.num}" id="accept" class="btn btn-warning">승인</button>	
				
					<button type="submit" data-board-num="${dto.num}" id="reject" class="btn btn-warning">승인 취소</button>	
				</div>
			
			</c:if>
			<!-- 승인버튼 끝 -->
			
			
			<!-- 댓글 영역 -->
			<div class="comment-area">
				<div class="comment-list">
				</div> <!-- //comment-list -->
				
				<div class="comment-write">
					<div class="comment-writer">작성자영역나중에세션정보로바꿀것\^_^/</div>
					<textarea class="comment-writebox" rows="2" cols="" placeholder="댓글을 작성해주세요."></textarea>
				
					<div class="comment-bottom">
						<div class="bottom-right">
							<a class="comment-write-btn" href="#">등록</a>
						</div>
					</div>
				</div> <!-- //comment-write -->
				
				
			</div>
			<!-- // 댓글 영역 끝 -->
			
			
			<!-- 하단 수정,삭제,목록 부분 -->
			<div class="article-bottom">
				<div class="bottom-left">
					<a class="btn btn-default list-btn" href="./update?num=${dto.num}"> 수정 </a>
					<a class="btn btn-default list-btn" href="./delete?num=${dto.num}"> 삭제 </a>
				</div>
				<div class="bottom-right">
					<a class="btn btn-default list-btn" href="./list"> 목록 </a>
				</div>
			</div>
			<!-- //하단 수정 삭제 목록 부분 끝 -->
		</div> <!-- //article  -->
		
		
	</div>


<script type="text/javascript" src="../resources/js/select.js"></script>

	<script>
		 $('.navi').addClass('affix');
	 </script>
	 

	<c:import url="../temp/boot_footer.jsp"></c:import>
</body>
</html>