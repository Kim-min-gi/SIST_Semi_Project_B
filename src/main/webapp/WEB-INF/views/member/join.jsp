<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		
		<c:import url="../temp/boot_head.jsp"></c:import>
		<link rel="stylesheet" type="text/css" href="../resources/css/join.css"/>
	</head>
	
	<body>
		<c:import url="../temp/boot_nav.jsp"></c:import>
	
		<div class="container">
			
			<h3>
				회원가입			
			</h3>
			
			<form id="accInfos" action="join" method="post" enctype="multipart/form-data" class="col-md-6 mx-auto">
				<!-- id -->
				<div class="mb-3">
					<label for="text" class="form-label">ID</label>
					<input type="text" class="form-control accInfo" id="id" name="id"> 
		    		
					<div id="idResult"></div>   
				</div>
				
				<!-- pw -->
				<div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Password</label>
				    <input type="password" class="form-control accInfo pw" id="pw1" name="pw" placeholder="6자리 이상을 입력하세요">
			  	</div>
			  	
			  	<!-- pw확인 -->
			  	<div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Password 확인</label>
				    <input type="password" class="form-control accInfo pw" id="pw2" name="pwCheck" placeholder="password를 한번더 입력하세요">
			  	</div>
			  	
			  	<!-- name -->
			  	<div class="mb-3">
			  		<label for="text" class="form-label">Name</label>
			  		<input type="text" class="form-control accInfo" id="name" name="name">
			  	</div>
			  	
			  	
			  	<!-- phone -->
			  	<div class="mb-3">
			  		<label for="text" class="form-label">Phone</label>
			  		<input type="tel" class="form-control accInfo" id="phone" name="phone" placeholder="01012345678">
			  	</div>
			  	
			  	<!-- Email -->
			  	<div class="mb-3">
			  		<label for="exampleInputEmail1" class="form-label">Email</label>
			  		<input type="email" class="form-control accInfo" id="email" name="email" aria-describedby=" emailHelp" placeholder="email@email.com">
			  	</div>
			  	
			  	<!-- nickName -->
			  	<div class="mb-3">
			  		<label for="text" class="form-label">Nick name</label>
			  		<input type="text" class="form-control accInfo" id="nickName" name="nickName">
			  		<div id="nickNameResult"></div> 
			  	</div>
			  	
			  	<!-- File -->
			  	<div class="mb-3" id="file">
			  		<label for="photo" class="form-label">Profile(선택사항)</label>
			  		<input type="file" class="form-control put" id="photo" name="photo" aria-describedby="emailHelp">
			  	</div>
			  	
			  	<!-- 회원가입 버튼 -->
			  	<div class="mb-3">
			  		<label class="form-label"></label>
	  				<button id="sign" type="button" class="btn btn-warning">회원가입</button>
			  	</div>
			</form>
		  	
  		</div>>
		
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script>
			$('.navi').addClass('affix');
		</script>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script type="text/javascript" src="../resources/js/join.js"></script>
		<script type="text/javascript" src="../resources/js/file.js"></script>
	</body>
	
</html>