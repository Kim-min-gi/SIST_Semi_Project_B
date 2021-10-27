<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>닉네임 중복체크</title>
		
	</head>
	
	<body>
		
		<h3>닉네임 중복체크</h3>
		
		<div>
			${param.nickName}는
			<c:if test="${empty dto}">
				사용 가능한 닉네임 입니다.
			</c:if>
			
			<c:if test="${not empty dto}">
				이미 있는 닉네임 입니다.
			</c:if>
		</div>
		
		<form id="frm" action="nickNameCheck" method="get" class="col-6 mx-auto">
			<div class="mb-3">
				<label for="text" class="form-label">ID</label>
				<input type="text" name="nickName" value="${param.nickName}" class="form-control put" id="nickName">
				
				<button type="submit" id="nickNameCheck" class="btn-warning">닉네임 중복확인</button>
					<c:if test="${empty dto}">
						<button type="button" id="useNickName" class="btn-warning">닉네임 사용</button>
					</c:if>
			</div>
		</form>
		
		
		<script type="text/javascript" src="../resources/js/nickNameCheck.js"></script>
	</body>

</html>