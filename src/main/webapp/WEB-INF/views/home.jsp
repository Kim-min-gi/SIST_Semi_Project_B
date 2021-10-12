<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Grid Loading and Hover Effect | Demo 2</title>
		<meta name="description" content="Grid Loading and Hover Effect: Recreating Samsung's grid loading effect" />
		<meta name="keywords" content="grid loading, swipe, effect, slide, masonry, web design, tutorial" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="./resources/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="./resources/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="./resources/css/component.css" />
		
		<c:import url="./temp/boot_head.jsp"></c:import>
		<script src="./resources/js/modernizr.custom.js"></script>
	</head>
	<body>
		<!-- nav -->
		<c:import url="./temp/boot_nav.jsp"></c:import>
	
	
		<div class="main-container">
			<!-- Top Navigation -->
			
			
			<div id = "searchbar">
				
				<div>
					<form action="search">
						<input class="SearchInput" type="text" placeholder="검색">
						<input class="SearchSubmit" type="submit" value="검색하기">
					</form>
				</div>
				
			
			</div>
			
			
			
			
			<section class="grid-wrap">
				<div class="Explanation">
					<h3>추천순</h3>
				</div>
				<ul class="grid swipe-down" id="grid">
				<c:forEach items="${starVal}" var="s" varStatus="status">
					<c:forEach items="${s.files}" var="f">
					<li><a id="sa${status.count}" href="#"><img src="./resources/img/dummy.png" alt="dummy">
					<span id="res">
					<h3>${s.restName} <span id="starVal">${s.starVal}</span></h3>
					</span>
					<span id="re" class="hide">
					<c:forEach items="${s.categorysDTOs}" var="ca" begin="0" end="1">	
					<h3>(${ca.categoryName})</h3>
					</c:forEach>
					</span> 
					</a>
					
					
					</c:forEach>
				</c:forEach>
					
				</li>
				</ul>
			</section>
			
			<hr>
				<section class="grid-wrap">
				<div class="Explanation">
					<h3>관리자가 선정한 식당</h3>
				</div>
				<ul class="grid swipe-down" id="grid2">
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					<li><a href="#"><img src="./resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
				</ul>
				
				
				<hr>
				
				<div class="writingcontainer">
				<div class="Communitys">
				<h3>첫번째 영역 : 커뮤니티 게시판 최신순</h3>
					
				</div>
				
				<div class="Riviews">
				<h3>두번째 영역 : 리뷰글 최신순</h3>
				
				</div>
				</div>
				
			
				
				
			</section>
			
			
			
		
			
		
		
		<c:import url="./temp/boot_footer.jsp"></c:import>
		
		
			
		 
   			 <script src="./resources/js/nav.js"></script>
   			 <!-- /container -->
		<script src="./resources/js/masonry.pkgd.min.js"></script>
		<script src="./resources/js/imagesloaded.pkgd.min.js"></script>
		<script src="./resources/js/classie.js"></script>
		<script src="./resources/js/colorfinder-1.1.js"></script>
		<script src="./resources/js/gridScrollFx.js"></script>
		<script>
			new GridScrollFx( document.getElementById( 'grid' ), {
				viewportFactor : 0.4
			} );
			
			new GridScrollFx( document.getElementById( 'grid2' ), {
				viewportFactor : 0.4
			} );
			
			
			$(window).scroll(function() {
				            if ($(document).scrollTop() > 50) {
				                $('.navi').addClass('affix');
				                $('#FLogo').addClass('SLogo');
				                
				            } else {
				                $('.navi').removeClass('affix');
				                $('#FLogo').removeClass('SLogo');
				            }
			});
			
			
			
			
			
			for(let i=1; i<9; i++){
				
							
				 $('#sa'+i).hover(function(){
					$(this).children('span#res').fadeOut(200);
					$(this).children('span#re').fadeIn(200).removeClass('hide');
				}, function(){
					$(this).children('span#res').fadeIn(200);
					$(this).children('span#re').fadeOut(200).addClass('hide');
					
				}); 
				
			};
			
			
		
		</script>
	</body>
</html>