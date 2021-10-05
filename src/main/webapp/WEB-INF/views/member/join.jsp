<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		
		<c:import url="../temp/boot_head.jsp"></c:import>
	</head>
	
	<body>
		<c:import url="../temp/boot_nav.jsp"></c:import>
	
		<div class="container">
			
			<h3>
				회원가입			
			</h3>
			
			<!-- id -->
			<div class="mb-3">
				<label for="text" class="form-label">ID</label>
				<input type="text" class="form-control put" id="id"> 
	    		
	    		<button type="button" id="idCheck" class="btn btn-warning">ID중복확인</button>
				<div id="idResult"></div>   
			</div>
			
			<!-- pw -->
			<div class="mb-3">
			    <label for="exampleInputPassword1" class="form-label">Password</label>
			    <input type="password" class="form-control" id="pw1">
		  	</div>
		  	
		  	<!-- pw확인 -->
		  	<div class="mb-3">
			    <label for="exampleInputPassword1" class="form-label">Password 확인</label>
			    <input type="password" class="form-control put pw" id="pw2" placeholder="password를 한번더 입력하세요">
		  	</div>
		  	
		  	<!-- name -->
		  	<div class="mb-3">
		  		<label for="text" class="form-label">Name</label>
		  		<input type="text" class="form-control put" id="name">
		  	</div>
		  	
		  	<!-- phone -->
		  	<div class="mb-3">
		  		<label for="text" class="form-label">Phone</label>
		  		<input type="tel" class="form-control put" id="phone" placeholder="01012345678">
		  	</div>
		  	
		  	<!-- Email -->
		  	<div class="mb-3">
		  		<label for="exampleInputEmail1" class="form-label">Email</label>
		  		<input type="email" class="form-control put" id="email" aria-describedby=" emailHelp" placeholder="email@email.com">
		  	</div>
		  	
		  	
  		</div>>
		
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script>
			$('.navi').addClass('affix');
		</script>
		
		<script type="text/javascript" src="../resources/js/join.js"></script>
	</body>
	
</html>