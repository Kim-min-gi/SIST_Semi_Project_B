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
				<p class="title-category">
					<c:choose>
						<c:when test="${dto.category eq 2}"> 분류2 </c:when>
						<c:when test="${dto.category eq 3}"> 분류3 </c:when>
						<c:otherwise> 분류1 </c:otherwise>
					</c:choose>
				</p>
				<h3 class="title-text"> ${dto.title} </h3> 
				<div class="">
					${dto.writer} 
					${dto.regDate} 
					${dto.hits}
				</div>
			</div> 
			
			${dto.contents}
			
			<div class="article-bottom">
				<div class="bottom-right">
					<a class="btn btn-default list-btn" href="./list"> 목록 </a>
				</div>
			</div>
		</div>
		<!-- //article  -->
		
		
	</div>


	<c:import url="../temp/boot_footer.jsp"></c:import>
</body>
</html>