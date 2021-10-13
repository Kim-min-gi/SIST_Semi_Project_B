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
						<input class="SearchInput" type="text" placeholder="검색" name="search">
						<input class="SearchSubmit" type="submit" value="검색하기">
					</form>
				</div>
				
			
			</div>
	</div>
	
	<div class="searchList">
		<div class="searchVal">
			<h2>${param.search}으로 검색한 결과</h2>
		</div>
		<hr>
	<div class="searchinfo">
		<ul>
			<li>
				<div>
					<figure>
						<a>
						<div class="RestImg">
						
						<img src="./resources/img/dummy.png">
						
						</div>
						</a>
						<figcaption class="fig">
							<div class="info">
							<a class="titleA">
								<h3 class="title">title</h3>
							</a>
							<h3 class="starVal">starVal</h3>
							<p class="category">
								<span><h4>Category</h4></span>
							</p>
							</div>
						</figcaption>
					</figure>
				</div>
				
			</li>
			
			<li>
				<div>
					<figure>
						<a>
						<div class="RestImg">
						
						<img src="./resources/img/dummy.png">
						
						</div>
						</a>
						<figcaption class="fig">
							<div class="info">
							<a class="titleA">
								<h3 class="title">title2</h3>
							</a>
							<h3 class="starVal">starVal2</h3>
							<p class="category">
								<span><h4>Category2</h4></span>
							</p>
							</div>
						</figcaption>
					</figure>
				</div>
				
			</li>
			
			<li>
				<div>
					<figure>
						<a>
						<div class="RestImg">
						
						<img src="./resources/img/dummy.png">
						
						</div>
						</a>
						<figcaption class="fig">
							<div class="info">
							<a class="titleA">
								<h3 class="title">title3</h3>
							</a>
							<h3 class="starVal">starVal3</h3>
							<p class="category">
								<span><h4>Category3</h4></span>
							</p>
							</div>
						</figcaption>
					</figure>
				</div>
				
			</li>
			
			<li>
				<div>
					<figure>
						<a>
						<div class="RestImg">
						
						<img src="./resources/img/dummy.png">
						
						</div>
						</a>
						<figcaption class="fig">
							<div class="info">
							<a class="titleA">
								<h3 class="title">title4</h3>
							</a>
							<h3 class="starVal">starVal4</h3>
							<p class="category">
								<span><h4>Category4</h4></span>
							</p>
							</div>
						</figcaption>
					</figure>
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