<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../temp/boot_head.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="../resources/css/list.css"/>
</head>
<body>

	<c:import url="../temp/boot_nav.jsp"></c:import>

	<div class="container">
	
		<h3 class="title-text"> 
			<c:if test="${board eq 'community'}">커뮤니티 </c:if>
			<c:if test="${board eq 'request'}">요청 </c:if>
			게시판 
		</h3>
			
		
		<table class="table table-hover">
			<tr>
				<c:if test="${board eq 'community'}">
					<th colspan="2" class="col-md-6"> 제목 </th>
				</c:if>
				<c:if test="${board eq 'request'}">
					<th class="col-md-6"> 제목 </th>
				</c:if>
				<th class="col-md-3"> 작성자 </th>
				<th class="col-md-2"> 작성일 </th>
				<th class="col-md-1"> 조회 </th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<c:if test="${board eq 'community'}">
						<td id="category" class="col-md-1"> 
							<c:choose>
								<c:when test="${list.category eq 1}"><span class="font-green font-weight-bold">자유</span></c:when>
								<c:when test="${list.category eq 2}"><span class="font-blue font-weight-bold">식당이야기</span></c:when>
								<c:when test="${list.category eq 3}"><span class="font-purple font-weight-bold">음식이야기</span></c:when>
							</c:choose> 
						</td>
					</c:if>
					
					<td> <a href="./select?num=${list.num}"> ${list.title} </a> </td>
					<td> ${list.writer} </td>
					<td> ${list.regDate} </td>
					<td> ${list.hits} </td>
				</tr>
			</c:forEach>
		</table>
		
		<nav class="text-center">
		  <ul class="pagination">
		    <li>
		      <a href="./list?pn=1" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
   		    <li>
		      <a href="./list?pn=${pager.startNum-1}" aria-label="Previous">
		        <span aria-hidden="true">&lt;</span>
		      </a>
		    </li>

		    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
		    	<li><a href="./list?pn=${n}">${n}</a></li>
		    </c:forEach>

			<li>
		      <a href="./list?pn=${pager.lastNum+1}" aria-label="Next">
		        <span aria-hidden="true">&gt;</span>
		      </a>
		    </li>
		    <li>
		      <a href="./list?pn=${pager.totalPage}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		
		<div class="bottom-area">
		
		
			<div class="bottom-left">
				<form action="./list" method="GET">
				    <div class="input-group">
						<select name="kind" class="form-control ">
							<option value="title">제목</option>
							<option value="writer">작성자</option>
						</select>
				      <input type="text" name="search" class="form-control">
				      <button type="submit" class="btn btn-default">검색</button>
				    </div><!-- /input-group -->
				</form>
			</div><!-- //bottom-left -->
			
			
			
			<div class="bottom-right">
				<a class="btn btn-default" href="./insert">작성</a>
			</div>
		</div>
		
	</div>

	<c:import url="../temp/boot_footer.jsp"></c:import>


	<script>
		$(window).scroll(function() {
				            if ($(document).scrollTop() > 50) {
				                $('.navi').addClass('affix');
				                console.log("OK");
				            } else {
				                $('.navi').removeClass('affix');
				            }
			});
	 </script>
	 
	 <script type="text/javascript" src="../resources/js/list.js"></script>
</body>
</html>