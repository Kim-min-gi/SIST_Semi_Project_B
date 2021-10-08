<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>



<nav class="navi">
	<div class="con">
   
		<div class="logo">
			<a href="#">
				<img id="FLogo" src="${pageContext.request.contextPath}/resources/img/Logo.png"> 
			</a>
		</div>
   
		<div id="mainListDiv" class="main_list">
			<c:choose>
				<c:when test="${not empty member}">
					<ul class="navlinks">
						<li><a href="#">MyPage</a></li>
						<li><a href="#">Logout</a></li>
						<li><a href="${pageContext.request.contextPath}/community/list">Community</a></li>
						<li><a href="${pageContext.request.contextPath}/request/list">Request</a></li>
					</ul>
				</c:when>
				
				<c:otherwise>
					<ul class="navlinks">
						<li><a href="${pageContext.request.contextPath}/member/login">Login</a></li>
						<li><a href="${pageContext.request.contextPath}/member/check">Join</a></li>
						<li><a href="${pageContext.request.contextPath}/community/list">Community</a></li>
						<li><a href="${pageContext.request.contextPath}/request/list">Request</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	 
	 	<span class="navTrigger">
			<i></i>
			<i></i>
			<i></i>
		</span>
		
	</div>
</nav>