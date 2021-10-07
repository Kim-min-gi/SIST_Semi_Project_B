<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${comments}" var="list">
	<div>
		${list.writer}
		${list.contents}
		${list.regDate}
	</div>
</c:forEach>