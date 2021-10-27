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
				<div class="review-rate" id="rating${reviewList.reviewNum}" data-rating="${reviewList.rating}">
					<c:forEach begin="1" end="${reviewList.rating}">
						<span class="star"></span>
					</c:forEach>
				</div>
				<div id="content${reviewList.reviewNum}" class="review-content" data-review-num="${reviewList.reviewNum}">
					<div>${reviewList.contents}</div>
				</div>
				<c:if test="${not empty reviewList.reviewFiles[0].reviewFilesNum}">
					<div class="review-img" id="img${reviewList.reviewNum}">
						<c:forEach items="${reviewList.reviewFiles}" var="list">
							<img src="${pageContext.request.contextPath}/resources/upload/review/${list.fileName}" data-file-name="${list.fileName}" data-ori-name="${list.oriName}" data-file-num="${list.reviewFilesNum}"> 
						</c:forEach>
					</div>
				</c:if>
					
			</div>
		</div>
		
		<!-- 로그인한 회원과 글 쓴 회원이 같을 경우 -->
		<c:if test="${member.id == reviewList.id}">
			<div class="list-btn-area">
				<button type="button" class="update" data-toggle="modal" data-target="#updateModal" data-review-num="${reviewList.reviewNum}">수정</button>
				<button type="button" class="delete" data-review-num="${reviewList.reviewNum}">삭제</button>
			</div>
		</c:if>
	</div>
	
</c:forEach>


<c:if test="${pager.lastNum != pager.pn}">
	<div class="more-area">
		<span class="moreReview" data-review-pn="${pager.pn+1}"> ↓ 리뷰 더보기 ↓ </span>
	</div>
</c:if>


