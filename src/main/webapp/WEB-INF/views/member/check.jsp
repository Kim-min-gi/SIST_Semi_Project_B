<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>약관동의</title>
		
		<c:import url="../temp/boot_head.jsp"></c:import>
		
		<link rel="stylesheet" type="text/css" href="../resources/css/check.css" />
	</head>
	
	<body>
		<c:import url="../temp/boot_nav.jsp"></c:import>
		
		<div class="container">
		
			<h3>
				약관동의
			</h3>
		
			<div class="form-check">
		 		<input class="form-check-input checks" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label terms" for="flexCheckDefault">
		    		약관1(필수)
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input checks" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label terms" for="flexCheckDefault">
		    		약관2(필수)
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input checks" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label terms" for="flexCheckDefault">
		    		약관3(필수)
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label terms" for="flexCheckDefault">
		    		약관4(선택)
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input" type="checkbox" value="" id="checkAll">
		  		<label class="form-check-label terms" for="checkAll">
		    		모두 동의
		  		</label>
			</div>
			
			<button id="btn" class="btn btn-warning">회원가입</button>
		</div>
		
		
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script>
			$('.navi').addClass('affix');
		</script>
		<script type="text/javascript" src="../resources/js/member.js"></script>
	</body>
	
</html>