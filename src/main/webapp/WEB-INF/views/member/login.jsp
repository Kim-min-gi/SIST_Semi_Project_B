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
			
			<h3>
				얌얌에 오신걸 환영합니다!
			</h3>
			
			<!-- 로그인 모달창 버튼 -->
			<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal">
				로그인
			</button>
			
			<!-- 로그인 모달창 기능 -->
			<div class="modal" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
					
						<!-- Modal header -->
						<div class="modal-header">
							<h3 class="modal-title">로그인</h3>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						
						<!-- Modal body -->
						<div class="modal-body">
							<form id="accLogin" action="login" method="post" class="was-validated">
								<div class="form-group">
									<label for="id">아이디</label>
									<input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요" name="id" required>
								</div>
								
								<div class="form-group">
									<label for="userPw">비밀번호</label>
									<input type="password" class="form-control" id="pw" placeholder="비밀번호를 입력하세요" name="pw" required>
								</div>
								<button type="submit" class="btn btn-warning" style="margin-left:63%;">로그인</button>
								<button type="button" class="btn btn-secondary" onclick="location.href='./check'">회원가입</button>
								<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
							</form>
						</div>
						
						
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
						</div>
						
					</div>
				</div>
			</div>
				
			
			
		</div>
	
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script>
			$('.navi').addClass('affix');
		</script>
		
	<body>
		
	</body>
	
</html>