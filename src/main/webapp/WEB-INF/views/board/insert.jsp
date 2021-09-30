<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	<div class="container">
	<h1>${board} Insert Page</h1>
	
	<form class="col-md-8 mx-auto" action="./insert" method="post" enctype="multipart/form-data">
	
		<div class="mb-3">
			<label for="title" class="form-label">Title</label>
		    <input type="text" class="form-control" name="title" id="title" placeholder="제목">
		</div>
		
		<div class="mb-3">
		    <label for="writer" class="form-label">Writer</label>
		    <input type="text" class="form-control" name="writer" id="writer" placeholder="작성자">
		</div>
		
		<div class="mb-3">
		    <label for="contents" class="form-label">Contents</label>
  			<textarea class="form-control" cols=""  name="contents" id="contents" rows="10"></textarea>
		</div>
	
	
	 <button type="submit" class="btn btn-primary">글쓰기</button>
	
	</form>
	
	
	</div>
	




	
	<c:import url="../temp/boot_footer.jsp"></c:import>
	
	<script>
		$('#contents').summernote();
	
		$(window).scroll(function() {
				            if ($(document).scrollTop() > 50) {
				                $('.navi').addClass('affix');
				                console.log("OK");
				            } else {
				                $('.navi').removeClass('affix');
				            }
			});
	 </script>
</body>
</html>