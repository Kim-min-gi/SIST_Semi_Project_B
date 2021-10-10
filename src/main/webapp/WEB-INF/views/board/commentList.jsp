<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${comments}" var="list">
	<div class="comment-box">
		<em class="list-writer">${list.writer}</em>
		${list.regDate}
		<div id="content${list.commentNum}" class="comment-content" data-comment-num="${list.commentNum}">
			<div>${list.contents}</div>
		</div>
		<!-- 로그인한 회원과 글 쓴 회원이 같을 경우 -->
		<div class="list-btn-area">
			<button type="button" class="update" data-comment-num="${list.commentNum}">수정</button>
			<button type="button" class="delete" data-comment-num="${list.commentNum}">삭제</button>
		</div>
	</div>
</c:forEach>

<nav class="text-center">
	<ul class="pagination">
	<li class="page-item">
      <span class="page-link" data-comment-pn="1">&laquo;</span>
    </li>
	<li class="page-item">
      <span class="page-link" data-comment-pn="${pager.startNum-1}">&lt</span>
    </li>
    
    	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
    		<li class="page-item"> 
    			<span class="page-link" data-comment-pn="${n}"> ${n} </span> 
    		</li>
		</c:forEach>
    <li class="page-item">
      	<span class="page-link" data-comment-pn="${pager.lastNum+1}">&gt</span>
    </li>
    <li class="page-item">
    	<span class="page-link" data-comment-pn="${pager.totalPage}"> &raquo; </span>
    </li>
  </ul>
</nav>