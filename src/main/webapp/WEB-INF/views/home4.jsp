<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	
	
<h1>
	Hello world!  
</h1>
<h1>Kim Min gi</h1>
<h1> sj2sj </h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
<script>
	$(window).scroll(function() {
	            if ($(document).scrollTop() > 50) {
	                $('.nav').addClass('affix');
	                console.log("OK");
	            } else {
	                $('.nav').removeClass('affix');
	            }
	        });
	
	</script>
</html>
<h1>여러 식당들의 리뷰와 평점! <span>식당 리뷰는 <a href="#">Yum Yum</a> 과 함께 하세요!</span></h1>	