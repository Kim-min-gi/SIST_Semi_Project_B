<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resume - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
		<c:import url="../temp/boot_head.jsp"></c:import>
		<link rel="stylesheet" type="text/css" href="../resources/css/mypage.css"/>
		
		<!-- 찜내역 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="keywords" content="grid loading, swipe, effect, slide, masonry, web design, tutorial" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="../resources/css/component.css" />
		<script src="../resources/js/modernizr.custom.js"></script>
	</head>
	
	<body>
	
		<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
           	<a class="navbar-brand js-scroll-trigger" href="#about">
                <span class="d-block d-lg-none">${member.nickName }</span>
                <span class="d-none d-lg-block">
                	<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="../resources/upload/member/${member.memberFilesDTO.fileName}" alt="profile"/>
                </span>
            </a><br>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button><br>
            
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="../">홈으로</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#wishlist">찜 내역</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#update">계정 수정</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#delete">계정 삭제</a></li>
                </ul>
            </div>
        </nav>
        
        <!-- Page Content-->
        <div class="container-fluid p-0">
        
        
            <!-- About-->
            <section class="resume-section" id="about">
                <div class="resume-section-content">
                
                    <h1 class="mb-0">
                        환영합니다
                        <span class="text-primary">${member.nickName} 님 😀</span>
                    </h1>
                    
                    <div class="subheading mb-5">
                        <br>전화번호 : ${member.phone}<br>
                        이메일 : <a href="mailto:name@email.com">${member.email}</a>
                    </div>
                    
                    <p class="lead mb-5">블라블라</p>
                    
                </div>
            </section>
            <hr class="m-0" />
            
            
            <!-- wishlist -->
            <section class="resume-section" id="wishlist">
                <div class="resume-section-content">
                
                    <h2 class="mb-5">찜 내역</h2>
                    
                    <ul class="grid swipe-down" id="grid2">
						<li><a href="#"><img src="../resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
						<li><a href="#"><img src="../resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
						<li><a href="#"><img src="../resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
						<li><a href="#"><img src="../resources/img/dummy.png" alt="dummy"><h3>A fantastic title</h3></a></li>
					</ul>
                    
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0">Senior Web Developer</h3>
                            <div class="subheading mb-3">Intelitec Solutions</div>
                            	<p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.</p>
                       		</div>
                        	<div class="flex-shrink-0"><span class="text-primary">March 2013 - Present</span></div>
                   	 	</div>
                    </div>
                    
                </div>
            </section>
            <hr class="m-0" />
            
            
            <!-- Update Account -->
            
            <section class="resume-section" id="update">
                <div class="resume-section-content">
                    <h2 class="mb-5">Update Account</h2>
                    
                    <form id="update-frm" action="update" method="post" class="col-md-6 mx-auto">

						<div class="mb-3">
	    					<label for="exampleInputPassword1" class="form-label">Password</label>
	    					<input type="password" class="form-control put pw" id="pw1" value="${member.pw}" name="pw">
	  					</div>

					 	<div class="mb-3">
					    	<label for="exampleInputPassword1" class="form-label">Password 확인</label>
					    	<input type="password" class="form-control put pw" id="pw2" name="pwCheck" placeholder="password를 한번더 입력하세요">
					  	<div id="warnPw" style="color:red;"></div>


					  	<div class="mb-3">
					   		<label for="text" class="form-label">Phone</label>
					   		<input type="tel" class="form-control put" id="phone" name="phone" value="${member.phone}" placeholder="01012345678">
					 	</div>

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Email</label>
							<input type="email" class="form-control put" id="email" name="email" value="${member.email}" aria-describedby="emailHelp"  placeholder="email@email.com">
						</div>

	   					<div class="mb-3 my-4">
	    					<label class="form-label"></label>
	  						<button id="btn" type="submit" class="btn btn-primary">Update</button>
  						</div>

                    </form>
                    
                </div>
            </section>
            <hr class="m-0" />
            
            <!-- Delete Account -->
            <section class="resume-section" id="delete">
                <div class="resume-section-content">
                    <h2 class="mb-5">Delete Account</h2>
                    <ul class="fa-ul mb-0">
                        <li>
                        	<h4>탈퇴 진행을 원하시면
                        		<a href="./delete">여기</a> 를 눌러주세요..
                        	</h4>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
		
		<c:import url="../temp/boot_footer.jsp"></c:import>
		
		<script>
			$('.navi').addClass('affix');
		</script>
		
		<script type="text/javascript" src="./resources/js/mypage.js?ver=123"></script>
		
		<!-- 찜내역 -->
		<script src="../resources/js/masonry.pkgd.min.js"></script>
		<script src="../resources/js/imagesloaded.pkgd.min.js"></script>
		<script src="../resources/js/classie.js"></script>
		<script src="../resources/js/colorfinder-1.1.js"></script>
		<script src="../resources/js/gridScrollFx.js"></script>
		<script>
			new GridScrollFx( document.getElementById( 'grid2' ), {
				viewportFactor : 0.4
			} );
		</script>
		
	</body>

</html>