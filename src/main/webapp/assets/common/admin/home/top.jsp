<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="main-header">
<div class="logo-header">
	<a href="${root}/adminmenu/home/main.jsp" class="logo">
		트리웨어 관리자
	</a>
	<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
</div>
<nav class="navbar navbar-header navbar-expand-lg">
	<div class="container-fluid">
		<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
			<li class="nav-item dropdown hidden-caret">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="la la-user"></i>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">사원등록</a>
					<a class="dropdown-item" href="#">메일쓰기</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">문의글</a>
				</div>
			</li>
			<li class="nav-item dropdown">
				<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> 
<%-- 				<img src="${root}/assets/img/profile1.jpg" alt="user-img" width="36" class="img-circle"> --%>
				<span>마이메뉴</span></span> </a>
				<ul class="dropdown-menu dropdown-user">
					<li>
						<div class="user-box">
							<div class="u-img"><img src="${root}/assets/img/profile1.jpg" alt="user"></div>
							<div class="u-text">
								<h4>김고은</h4>
								<p class="text-muted">201810222</p>
								<p class="text-muted">이메일@projectname.com</p>
								<!-- <a href="profile.html" class="btn btn-rounded btn-danger btn-sm">버튼 메뉴</a> -->
							</div>
							</div>
						</li>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${root}/menu/home/main.jsp"><i class="ti-user"></i>사원 페이지</a>
						<a class="dropdown-item" href="#"></i>단축 메뉴2</a>
						<a class="dropdown-item" href="#"><i class="ti-email"></i>단축 메뉴3</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#"><i class="ti-settings"></i>정보 수정</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${root}/index.jsp"><i class="fa fa-power-off"></i>로그아웃</a>
					</ul>
					<!-- /.dropdown-user -->
				</li>
			</ul>
		</div>
	</nav>
</div>