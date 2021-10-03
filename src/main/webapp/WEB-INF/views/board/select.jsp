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
						<c:when test="${dto.category eq 1}">자유</c:when>
						<c:when test="${dto.category eq 2}">식당이야기</c:when>
						<c:when test="${dto.category eq 3}">음식이야기</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</p>
			</c:if>
			
				<h3 class="title-text"> ${dto.title} </h3> 
				<div class="">
					${dto.writer} 
					${dto.regDate} 
					${dto.hits}
				</div>
			</div> 
			
			${dto.contents}
			
			
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
			
			<div class="article-bottom">
				<div class="bottom-right">
					<a class="btn btn-default list-btn" href="./list"> 목록 </a>
				</div>
			</div>
		</div>
		<!-- //article  -->
		
		
	</div>


<script type="text/javascript" src="../resources/js/select.js">

</script>

	<c:import url="../temp/boot_footer.jsp"></c:import>
</body>
</html>