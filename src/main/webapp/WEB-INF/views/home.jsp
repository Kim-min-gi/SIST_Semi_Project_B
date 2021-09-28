<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="./resources/css/nav.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<header>
	<nav class="nav">
			        <div class="container">
			            <div class="logo">
			                <a href="#">Your Logo</a>
			            </div>
			            <div id="mainListDiv" class="main_list">
			                <ul class="navlinks">
			                    <li><a href="#">About</a></li>
			                    <li><a href="#">Portfolio</a></li>
			                    <li><a href="#">Services</a></li>
			                    <li><a href="#">Contact</a></li>
			                </ul>
			            </div>
			            <span class="navTrigger">
			                <i></i>
			                <i></i>
			                <i></i>
			            </span>
			        </div>
			    </nav>
		</header>
	
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
