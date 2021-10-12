<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
		
		<meta charset="UTF-8">
		<title>로그인</title>
		
		<c:import url="../temp/boot_head.jsp"></c:import>
		
	</head>
		<c:import url="../temp/boot_nav.jsp"></c:import>
	
		<div class="container">
			
			<h3>로그인</h3>
			
			<form id="accLogin" action="login" method="post" class="col-md-6 mx-auto">
			
				<div class="mb-3">
					<label for="text" class="form-label">ID</label>
					<input type="text" name="id" class="form-control put" id="id">
				</div>
				
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" name="pw" class="form-control put pw" id="pw1">
				</div>
				
				<div class="mb-3 my-4">
					<label class="form-label"></label>
					<button id="btn" type="submit" class="btn btn-warning">Login</button>
				</div>
			
			</form>
			
		</div>
	
		<c:import url="../temp/boot_footer.jsp"></c:import>
	<body>
		
	</body>
	
</html>