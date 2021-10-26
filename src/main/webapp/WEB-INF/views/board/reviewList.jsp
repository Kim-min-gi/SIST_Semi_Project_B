<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:forEach items="${reviews}" var="reviewList">
	<div class="review-box">
		<div class="profile">
			프사
		</div>
		<div class="content-area">
			
			<div class="content-top">
				<em class="list-writer">${reviewList.writer}</em>
				<span class="list-date">${reviewList.regDate}</span>
			</div>
			
			<div class="content-bottom">
				<div>☆☆☆☆☆</div>
				<div>${reviewList.contents}</div>
				<div class="review-img">
	
				</div>
			</div>
		</div>
		
		<!-- 로그인한 회원과 글 쓴 회원이 같을 경우 -->
		<div class="list-btn-area">
			
		</div>
	</div>

</c:forEach>