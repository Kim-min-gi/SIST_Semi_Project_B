<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>ID 중복체크</title>
		
	</head>
	
	<body>
		
		<h3>ID 중복체크</h3>
		
		<div>
			${param.id}는
			<c:if test="${empty dto}">
				사용 가능한 ID 입니다.
			</c:if>
			
			<c:if test="${not empty dto}">
				사용 불가능한 ID 입니다.
			</c:if>
		</div>
		
		<form id="frm" action="idCheck" method="get" class="col-6 mx-auto">
			<div class="mb-3">
				<label for="text" class="form-label">ID</label>
				<input type="text" name="id" value="${param.id}" class="form-control put" id="id">
				
				<button type="submit" id="idCheck" class="btn-warning">ID중복확인</button>
					<c:if test="${empty dto}">
						<button type="button" id="useId" class="btn-warning">ID사용</button>
					</c:if>
			</div>
		</form>
		
		
		<script type="text/javascript" src="../resources/js/idCheck.js"></script>
	</body>

</html>