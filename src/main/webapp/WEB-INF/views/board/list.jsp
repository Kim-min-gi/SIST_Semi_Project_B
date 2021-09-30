<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>

	<c:import url="../temp/boot_nav.jsp"></c:import>

	<div class="container">
	
		<h3> 커뮤니티 게시판 </h3>
		
		<table class="table table-hover">
			<tr>
				<th class="col-md-6"> 제목 </th>
				<th class="col-md-2"> 작성자 </th>
				<th class="col-md-2"> 작성일 </th>
				<th class="col-md-2"> 조회 </th>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>  <a href="./select?num=${list.num}"> ${list.title} </a> </td>
					<td> ${list.writer} </td>
					<td> ${list.regDate} </td>
					<td> ${list.hits} </td>
				</tr>
			</c:forEach>
		</table>
		
		<a>작성</a>
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
</body>
</html>