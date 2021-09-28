<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<c:import url="./temp/boot_head.jsp"></c:import>
</head>
<body>
<c:import url="./temp/boot_nav.jsp"></c:import>
	
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
