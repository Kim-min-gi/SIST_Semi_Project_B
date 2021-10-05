<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="./resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/searchList.css" />
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>




<div class="container search">
	<div class="searchPart">
	<div id = "searchbar">
				
				<div>
					<form action="search">
						<input class="SearchInput" type="text" placeholder="검색">
						<input class="SearchSubmit" type="submit" value="검색하기">
					</form>
				</div>
				
			
			</div>
	</div>
	
	<div class="searchList">
	<h1>search List</h1>
	
	</div>
	
	
	<div class="involvedList">
		<h1>involved List</h1>
	</div>
	
</div>


<c:import url="../temp/boot_footer.jsp"></c:import>
	
	<script>
	
		
	$('.navi').addClass('affix');
	
	

	 </script>
</body>
</html>