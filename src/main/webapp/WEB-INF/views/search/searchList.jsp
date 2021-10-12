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
		<div class="searchVal">
			<h2>test</h2>
		</div>
	<div class="searchinfo">
		<ul>
			<li>
				<div>
					<figure>
						<a>
						<div>
						
						<img>
						
						</div>
						</a>
						<figcaption>
							<div class="info">
							<a>
								<h2 class="title">title</h2>
							</a>
							<strong class="starVal">starVal</strong>
							<p class="category">
								<span>Category</span>
							</p>
							</div>
						</figcaption>
						
					</figure>
					
				</div>
				
				<div>
				</div>
				
			</li>
			
		</ul>
	</div>
	

	
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