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
				<div class="review-rate">
					<c:forEach begin="1" end="${reviewList.rating}">
						<span class="star"></span>
					</c:forEach>
				</div>
				<div>${reviewList.contents}</div>
				<c:if test="${not empty reviewList.reviewFiles[0].reviewFilesNum}">
					<div class="review-img">
						<c:forEach items="${reviewList.reviewFiles}" var="list">
							<img src="${pageContext.request.contextPath}/resources/upload/review/${list.fileName}"> 
						</c:forEach>
					</div>
				</c:if>
					
			</div>
		</div>
		
		<!-- 로그인한 회원과 글 쓴 회원이 같을 경우 -->
		<div class="list-btn-area">
			
		</div>
	</div>
	
</c:forEach>


<c:if test="${pager.lastNum != pager.pn}">
	<div>
		<span class="moreReview" data-review-pn="${pager.pn+1}"> 더보기 </span>
	</div>
</c:if>


