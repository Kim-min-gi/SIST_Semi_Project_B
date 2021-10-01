<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>



<nav class="navi">
  <div class="con">
   <div class="logo">
   <a href="#">
    <%-- <img id="FLogo" src="${pageContext.request.contextPath}/resources/img/Logo1.png"> --%>
    </a>
   </div>
 <div id="mainListDiv" class="main_list">
	<ul class="navlinks">
	 <li><a href="#">Login</a></li>
	 <li><a href="#">Join</a></li>
	 <li><a href="${pageContext.request.contextPath}/community/list">Community</a></li>
	 <li><a href="${pageContext.request.contextPath}/request/list">Request</a></li>
	 </ul>
 </div>
	 <span class="navTrigger">
	<i></i>
	<i></i>
	<i></i>
	</span>
	</div>
</nav>