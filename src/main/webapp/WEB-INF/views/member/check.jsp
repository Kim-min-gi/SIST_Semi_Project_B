<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>약관동의</title>
		
		<c:import url="../temp/boot_head.jsp"></c:import>
	</head>
	
	<body>
		<c:import url="../temp/boot_nav.jsp"></c:import>
		
		<div>
			<div class="form-check">
		 		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label" for="flexCheckDefault">
		    		약관1
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label" for="flexCheckDefault">
		    		약관2
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label" for="flexCheckDefault">
		    		약관3
		  		</label>
			</div>
			
			<div class="form-check">
		 		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		  		<label class="form-check-label" for="flexCheckDefault">
		    		약관4
		  		</label>
			</div>
		</div>
		
		<c:import url="../temp/boot_footer.jsp"></c:import>
	</body>
	
</html>